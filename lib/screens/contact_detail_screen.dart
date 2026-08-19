import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:path_provider/path_provider.dart';
import '../services/blocking_manager.dart';
import '../services/favourites_manager.dart';
import 'sim_picker_sheet.dart';
import '../widgets/sim_badge.dart';

import 'package:nothing_dialer/l10n/app_localizations.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:share_plus/share_plus.dart';

import '../extensions/dialer_text_style.dart';
import '../services/app_font_config.dart';
import '../services/contact_photo_account.dart';
import '../services/contact_photo_cache.dart';
import '../services/contact_photo_picker_recovery.dart';
import '../services/contact_photo_processor.dart';
import '../services/contact_photo_visibility.dart';
import '../services/contact_photo_writer.dart';
import '../main.dart' as main_app;
import '../widgets/contact_avatar.dart';
import '../widgets/dialer_font_scope.dart';
import 'contact_photo_crop_screen.dart';
import 'package:image_picker/image_picker.dart';

class ContactDetailScreen extends StatefulWidget {
  final Contact contact;
  const ContactDetailScreen({super.key, required this.contact});

  @override
  State<ContactDetailScreen> createState() => _ContactDetailScreenState();
}

class _ContactDetailScreenState extends State<ContactDetailScreen> {
  late Contact _contact;

  /// Per-contact SIM: `system` (use global default / picker rules), `ask`, or `fixed`.
  String _callingSimMode = 'system';

  /// 0-based index when [_callingSimMode] is `fixed`.
  int? _preferredSim;

  /// Display label for the contact ringtone tile (null → Default).
  String? _customRingtoneName;

  /// `default` | `silent` | `ringtone`
  String _ringtoneSelection = 'default';
  String? _ringtoneUri;

  @override
  void initState() {
    super.initState();
    _contact = widget.contact;
    _refreshContact();
    _loadPreferences();
    BlockingManager.blockedNumbersNotifier.addListener(
      _onBlockedNumbersChanged,
    );
  }

  void _onBlockedNumbersChanged() {
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    BlockingManager.blockedNumbersNotifier.removeListener(
      _onBlockedNumbersChanged,
    );
    super.dispose();
  }

  Future<void> _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    var mode = prefs.getString('pref_sim_mode_${_contact.id}');
    var simIdx = prefs.getInt('pref_sim_${_contact.id}');

    // Migrate legacy storage (SIM index only, no mode key).
    if (mode == null) {
      if (simIdx != null && simIdx >= 0) {
        mode = 'fixed';
        await prefs.setString('pref_sim_mode_${_contact.id}', 'fixed');
      } else if (simIdx == -1) {
        mode = 'ask';
        await prefs.remove('pref_sim_${_contact.id}');
        await prefs.setString('pref_sim_mode_${_contact.id}', 'ask');
        simIdx = null;
      } else {
        mode = 'system';
      }
    }

    if ((mode == 'system' || mode == 'ask') && simIdx != null) {
      await prefs.remove('pref_sim_${_contact.id}');
      simIdx = null;
    }

    await _loadRingtoneState(prefs);

    if (mounted) {
      setState(() {
        _callingSimMode = mode ?? 'system';
        _preferredSim = _callingSimMode == 'fixed' ? simIdx : null;
      });
    }
  }

  /// Contacts.CUSTOM_RINGTONE is the source of truth; prefs are a UI cache only.
  Future<void> _loadRingtoneState([SharedPreferences? existingPrefs]) async {
    final l10n = mounted ? AppLocalizations.of(context) : null;
    final prefs = existingPrefs ?? await SharedPreferences.getInstance();

    String selection = 'default';
    String? uri;
    String? title;

    try {
      final raw = await _channel.invokeMethod<Map<dynamic, dynamic>>(
        'getContactRingtone',
        {'contactId': _contact.id},
      );
      if (raw != null) {
        selection = (raw['selection'] as String?) ?? 'default';
        uri = raw['uri'] as String?;
        title = raw['title'] as String?;
      }
    } catch (_) {
      // Fall back to local cache if Contacts read fails.
      final cached = prefs.getString('pref_ringtone_${_contact.id}');
      if (cached == null || cached == 'default') {
        selection = 'default';
      } else if (cached == 'silent') {
        selection = 'silent';
        uri = 'silent';
      } else {
        selection = 'ringtone';
        uri = cached;
        try {
          title = await _channel.invokeMethod<String>(
            'getRingtoneTitle',
            cached,
          );
        } catch (_) {}
      }
    }

    // Keep prefs aligned with Contacts so UI survives offline/glitches.
    switch (selection) {
      case 'silent':
        await prefs.setString('pref_ringtone_${_contact.id}', 'silent');
        title = l10n?.ringtoneSilent ?? 'Silent';
        break;
      case 'ringtone':
        if (uri != null) {
          await prefs.setString('pref_ringtone_${_contact.id}', uri);
        }
        title ??= l10n?.customRingtone ?? 'Custom';
        break;
      default:
        await prefs.remove('pref_ringtone_${_contact.id}');
        title = null;
        selection = 'default';
        uri = null;
        break;
    }

    if (mounted) {
      setState(() {
        _ringtoneSelection = selection;
        _ringtoneUri = uri;
        _customRingtoneName = title;
      });
    }
  }

  Future<void> _refreshContact() async {
    final fullContact = await FlutterContacts.getContact(
      _contact.id,
      withProperties: true,
      withThumbnail: true,
      withPhoto: true,
      withAccounts: true,
    );
    if (fullContact != null && mounted) {
      setState(() => _contact = fullContact);
    }
  }

  Future<void> _showPhotoOptions() async {
    final l10n = AppLocalizations.of(context);
    final hasPhoto = _contact.photo != null || _contact.thumbnail != null;

    final action = await showModalBottomSheet<String>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (ctx) {
        final scheme = Theme.of(ctx).colorScheme;
        return Container(
          decoration: BoxDecoration(
            color: scheme.surface,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
          ),
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.photo_library_outlined),
                  title: Text(l10n.contactPhotoPickFromGallery),
                  onTap: () => Navigator.pop(ctx, 'pick'),
                ),
                if (hasPhoto)
                  ListTile(
                    leading: Icon(Icons.delete_outline, color: scheme.error),
                    title: Text(
                      l10n.contactPhotoRemove,
                      style: TextStyle(color: scheme.error),
                    ),
                    onTap: () => Navigator.pop(ctx, 'remove'),
                  ),
              ],
            ),
          ),
        );
      },
    );

    if (!mounted || action == null) return;

    if (action == 'pick') {
      await _pickContactPhotoFromGallery();
    } else if (action == 'remove') {
      await _removeContactPhoto();
    }
  }

  Future<void> _pickContactPhotoFromGallery() async {
    try {
      await ContactPhotoPickerRecovery.markPending(_contact.id);
      final picker = ImagePicker();
      final file = await picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 2048,
        maxHeight: 2048,
        imageQuality: 90,
      );
      if (file == null || !mounted) {
        await ContactPhotoPickerRecovery.clearPending();
        return;
      }

      final imageBytes = await file.readAsBytes();
      if (!mounted) {
        await ContactPhotoPickerRecovery.clearPending();
        return;
      }
      final croppedBytes = await showContactPhotoCropScreen(
        context,
        imageBytes: imageBytes,
      );
      if (croppedBytes == null || !mounted) {
        await ContactPhotoPickerRecovery.clearPending();
        return;
      }

      await _savePickedContactPhoto(croppedBytes);
      await ContactPhotoPickerRecovery.clearPending();
    } catch (_) {
      await ContactPhotoPickerRecovery.clearPending();
      _showContactPhotoError();
    }
  }

  Future<void> _savePickedContactPhoto(Uint8List croppedBytes) async {
    final l10n = AppLocalizations.of(context);
    try {
      final bytes = await normalizeContactPhotoBytesAsync(croppedBytes);
      final full = await FlutterContacts.getContact(
        _contact.id,
        withProperties: true,
        withThumbnail: true,
        withPhoto: true,
        withAccounts: true,
      );
      if (full == null || !mounted) return;

      final savedDirectly = await ContactPhotoWriter.save(_contact.id, bytes);
      late final Contact updated;
      if (savedDirectly) {
        full.photo = bytes;
        full.thumbnail = bytes;
        updated = full;
      } else {
        prioritizePhotoAccount(full);
        full.photo = bytes;
        updated = await full.update();
        if (updated.photo == null && updated.thumbnail == null) {
          throw StateError('Contacts provider did not persist the photo');
        }
      }
      if (updated.displayName.isEmpty) {
        updated.displayName = full.displayName;
      }

      ContactPhotoCache.replace(_contact.id, bytes);
      setState(() {
        _contact = updated;
      });

      await ensureContactPhotosVisible();

      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.contactPhotoUpdated)));
      }
    } catch (_) {
      _showContactPhotoError();
    }
  }

  Future<void> _removeContactPhoto() async {
    final l10n = AppLocalizations.of(context);
    try {
      final full = await FlutterContacts.getContact(
        _contact.id,
        withProperties: true,
        withThumbnail: true,
        withPhoto: true,
        withAccounts: true,
      );
      if (full == null || !mounted) return;

      prioritizePhotoAccount(full);
      full.photo = null;
      full.thumbnail = null;
      await full.update();
      ContactPhotoCache.invalidate(_contact.id);
      await _refreshContact();

      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.contactPhotoRemoved)));
      }
    } catch (_) {
      _showContactPhotoError();
    }
  }

  void _showContactPhotoError() {
    if (!mounted) return;
    final l10n = AppLocalizations.of(context);
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(l10n.contactPhotoPickError)));
  }

  static const _channel = MethodChannel('nothing_dialer/control');

  Future<void> _call(String number) async {
    HapticFeedback.mediumImpact();

    int? simIndex;
    switch (_callingSimMode) {
      case 'fixed':
        simIndex = _preferredSim;
        simIndex ??= await showSimPicker(context, rememberChoice: false);
        break;
      case 'ask':
        simIndex = await showSimPicker(context, rememberChoice: false);
        break;
      case 'system':
      default:
        simIndex = await showSimPicker(context);
        break;
    }

    if (simIndex == null || !mounted) return;

    try {
      await _channel.invokeMethod('placeCallWithSim', {
        'number': number,
        'simIndex': simIndex,
      });
    } on PlatformException catch (e) {
      if (mounted) {
        final l10n = AppLocalizations.of(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.callError(e.message ?? '')),
            backgroundColor: Theme.of(
              context,
            ).colorScheme.surfaceContainerHighest,
          ),
        );
      }
    }
  }

  Future<void> _message(String number) async {
    try {
      await _channel.invokeMethod('openSmsApp', {'number': number});
    } on PlatformException catch (e) {
      if (mounted) {
        final l10n = AppLocalizations.of(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.genericError(e.message ?? ''))),
        );
      }
    }
  }

  Future<void> _editContact() async {
    await FlutterContacts.openExternalEdit(_contact.id);
    ContactPhotoCache.invalidate(_contact.id);
    await _refreshContact();
  }

  Future<void> _setCallingSim() async {
    final l10n = AppLocalizations.of(context);
    try {
      final raw = await _channel.invokeMethod<List<dynamic>>('getSimCards');
      if (!mounted) return;
      if (raw == null || raw.isEmpty) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.noSimCardsFound)));
        return;
      }
      final sims = raw.cast<Map<dynamic, dynamic>>();

      await showModalBottomSheet<void>(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (sheetContext) => Container(
          decoration: BoxDecoration(
            color: Theme.of(sheetContext).colorScheme.surface,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
          ),
          child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16, bottom: 8),
                    child: Container(
                      width: 32,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Theme.of(
                          sheetContext,
                        ).colorScheme.outlineVariant,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
                  child: Text(
                    l10n.callingSimForContactTitle,
                    style: TextStyle(
                      color: Theme.of(sheetContext).colorScheme.onSurface,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                  leading: Icon(
                    Icons.settings_rounded,
                    color: Theme.of(sheetContext).colorScheme.onSurfaceVariant,
                  ),
                  title: Text(l10n.simSameAsSystem),
                  subtitle: Text(l10n.simSameAsSystemSubtitle),
                  onTap: () async {
                    final prefs = await SharedPreferences.getInstance();
                    await prefs.remove('pref_sim_${_contact.id}');
                    await prefs.setString(
                      'pref_sim_mode_${_contact.id}',
                      'system',
                    );
                    if (mounted) {
                      setState(() {
                        _callingSimMode = 'system';
                        _preferredSim = null;
                      });
                    }
                    if (sheetContext.mounted) Navigator.pop(sheetContext);
                  },
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                  leading: Icon(
                    Icons.help_outline_rounded,
                    color: Theme.of(sheetContext).colorScheme.onSurfaceVariant,
                  ),
                  title: Text(l10n.askEveryTime),
                  subtitle: Text(l10n.simAskEveryTimeForContact),
                  onTap: () async {
                    final prefs = await SharedPreferences.getInstance();
                    await prefs.remove('pref_sim_${_contact.id}');
                    await prefs.setString(
                      'pref_sim_mode_${_contact.id}',
                      'ask',
                    );
                    if (mounted) {
                      setState(() {
                        _callingSimMode = 'ask';
                        _preferredSim = null;
                      });
                    }
                    if (sheetContext.mounted) Navigator.pop(sheetContext);
                  },
                ),
                ...sims.asMap().entries.map((e) {
                  final idx = e.key;
                  final sim = e.value;
                  final label =
                      sim['label'] as String? ?? l10n.simSlot(idx + 1);
                  final slot = (sim['slot'] as int?) ?? (idx + 1);
                  final simIndex = (sim['index'] as num?)?.toInt() ?? idx;
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                    leading: SimIconListLeading(
                      simIndex: simIndex,
                      label: label,
                    ),
                    title: Text(label),
                    subtitle: Text(l10n.simSlot(slot)),
                    onTap: () async {
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setString(
                        'pref_sim_mode_${_contact.id}',
                        'fixed',
                      );
                      await prefs.setInt('pref_sim_${_contact.id}', idx);
                      if (mounted) {
                        setState(() {
                          _callingSimMode = 'fixed';
                          _preferredSim = idx;
                        });
                      }
                      if (sheetContext.mounted) Navigator.pop(sheetContext);
                    },
                  );
                }),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      );
    } on PlatformException catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.couldNotLoadSims(e.message ?? ''))),
        );
      }
    }
  }

  Future<void> _pickRingtone() async {
    final l10n = AppLocalizations.of(context);
    try {
      final raw = await _channel.invokeMethod<List<dynamic>>('listRingtones');
      if (!mounted) return;
      final tones = (raw ?? const <dynamic>[])
          .whereType<Map>()
          .map((e) => Map<String, dynamic>.from(e))
          .toList();

      await showModalBottomSheet<void>(
        context: context,
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        builder: (sheetContext) {
          return _ContactRingtoneSheet(
            tones: tones,
            currentSelection: _ringtoneSelection,
            currentUri: _ringtoneUri,
            defaultLabel: l10n.ringtoneDefault,
            silentLabel: l10n.ringtoneSilent,
            title: l10n.selectContactRingtone,
            onPreview: (uri) async {
              try {
                await _channel.invokeMethod('previewRingtone', {'uri': uri});
              } catch (_) {}
            },
            onStopPreview: () async {
              try {
                await _channel.invokeMethod('stopRingtonePreview');
              } catch (_) {}
            },
            onSelected: (selection, uri) =>
                _applyContactRingtone(selection, uri, showSnack: false),
          );
        },
      ).whenComplete(() async {
        try {
          await _channel.invokeMethod('stopRingtonePreview');
        } catch (_) {}
      });
    } on PlatformException catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.failedPickRingtone(e.message ?? ''))),
        );
      }
    }
  }

  Future<void> _applyContactRingtone(
    String selection,
    String? uri, {
    bool showSnack = true,
  }) async {
    final l10n = AppLocalizations.of(context);
    try {
      final ringtoneUri = switch (selection) {
        'default' => null,
        'silent' => 'silent',
        _ => uri,
      };

      final raw = await _channel.invokeMethod<Map<dynamic, dynamic>>(
        'setContactRingtone',
        {'contactId': _contact.id, 'ringtoneUri': ringtoneUri},
      );

      final prefs = await SharedPreferences.getInstance();
      final appliedSelection = (raw?['selection'] as String?) ?? selection;
      final appliedUri = raw?['uri'] as String?;
      final appliedTitle = raw?['title'] as String?;

      String? displayTitle;
      switch (appliedSelection) {
        case 'silent':
          await prefs.setString('pref_ringtone_${_contact.id}', 'silent');
          displayTitle = l10n.ringtoneSilent;
          break;
        case 'ringtone':
          if (appliedUri != null) {
            await prefs.setString('pref_ringtone_${_contact.id}', appliedUri);
          }
          displayTitle = appliedTitle ?? l10n.customRingtone;
          break;
        default:
          await prefs.remove('pref_ringtone_${_contact.id}');
          displayTitle = null;
          break;
      }

      if (!mounted) return;
      setState(() {
        _ringtoneSelection =
            appliedSelection == 'ringtone' || appliedSelection == 'silent'
            ? appliedSelection
            : 'default';
        _ringtoneUri = appliedUri;
        _customRingtoneName = displayTitle;
      });

      if (showSnack) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              appliedSelection == 'default'
                  ? l10n.ringtoneClearedForContact
                  : l10n.ringtoneSetForContact,
            ),
          ),
        );
      }
    } on PlatformException catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.failedSetRingtone(e.message ?? ''))),
        );
      }
      rethrow;
    }
  }

  Future<void> _shareContact() async {
    final l10n = AppLocalizations.of(context);
    final vcard = _contact.toVCard();
    final directory = await getTemporaryDirectory();
    final path =
        '${directory.path}/${_contact.displayName.replaceAll(' ', '_')}.vcf';
    final file = File(path);
    await file.writeAsString(vcard);

    await Share.shareXFiles([
      XFile(path),
    ], subject: l10n.shareContactSubject(_contact.displayName));
  }

  Future<void> _deleteContact() async {
    final l10n = AppLocalizations.of(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.surfaceContainerHigh,
        title: Text(
          l10n.deleteContactQuestion,
          style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
        ),
        content: Text(
          l10n.deleteContactBody,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(
              l10n.cancel,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(
              l10n.delete,
              style: const TextStyle(color: Colors.redAccent),
            ),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      await FlutterContacts.deleteContact(_contact);
      if (mounted) Navigator.pop(context, true);
    }
  }

  Future<void> _toggleBlockContact() async {
    final l10n = AppLocalizations.of(context);
    final phoneNumbers = _contact.phones.map((p) => p.number).toList();
    if (phoneNumbers.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(l10n.noPhoneNumbersToBlock)));
      return;
    }

    // A contact is considered blocked if ANY of their numbers are blocked
    final bool isBlocked = phoneNumbers.any(
      (n) => BlockingManager.isBlocked(n),
    );

    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.surfaceContainerHigh,
        title: Text(
          isBlocked ? l10n.unblockContactQuestion : l10n.blockContactQuestion,
          style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
        ),
        content: Text(
          isBlocked ? l10n.unblockContactBody : l10n.blockContactBody,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(
              l10n.cancel,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(
              isBlocked ? l10n.unblock : l10n.block,
              style: TextStyle(
                color: isBlocked
                    ? Theme.of(context).colorScheme.onSurface
                    : Colors.redAccent,
              ),
            ),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      try {
        for (final number in phoneNumbers) {
          if (isBlocked) {
            await BlockingManager.unblockNumber(number);
          } else {
            await BlockingManager.blockNumber(number);
          }
        }
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                isBlocked ? l10n.contactUnblocked : l10n.contactBlocked,
              ),
            ),
          );
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l10n.genericError(e.toString()))),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return DialerFontScope(
      surface: DialerFontSurface.contactDetail,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            ValueListenableBuilder<List<FavouriteEntry>>(
              valueListenable: FavouritesManager.favouritesNotifier,
              builder: (context, _, __) {
                final phones = _contact.phones;
                if (phones.isEmpty) return const SizedBox(width: 0);
                final num = phones.first.number;
                final fav = FavouritesManager.isFavourite(num);
                return IconButton(
                  icon: Icon(
                    fav ? Icons.star_rounded : Icons.star_outline_rounded,
                    color: fav
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onSurface,
                  ),
                  onPressed: () async {
                    if (fav) {
                      await FavouritesManager.removeFavourite(num);
                    } else {
                      await FavouritesManager.addFavourite(
                        FavouriteEntry(
                          id: _contact.id,
                          number: num,
                          name: _contact.displayName,
                        ),
                      );
                    }
                    if (mounted) setState(() {});
                  },
                );
              },
            ),
            IconButton(
              tooltip: l10n.contactPhotoPickFromGallery,
              icon: Icon(
                Icons.add_photo_alternate_outlined,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              onPressed: _showPhotoOptions,
            ),
            IconButton(
              icon: Icon(
                Icons.edit_outlined,
                color: Theme.of(context).colorScheme.onSurface,
              ),
              onPressed: _editContact,
            ),
          ],
        ),
        body: ListenableBuilder(
          listenable: main_app.contactPhotoModeNotifier,
          builder: (context, _) {
            final fullscreen = main_app
                .contactPhotoModeNotifier
                .value
                .usesFullscreenBackground;
            final photoBytes = _contact.photo ?? _contact.thumbnail;
            final overlayBase = Theme.of(context).brightness == Brightness.dark
                ? Colors.black
                : Colors.white;

            return Stack(
              fit: StackFit.expand,
              children: [
                if (fullscreen && photoBytes != null)
                  Positioned.fill(
                    child: Image.memory(
                      photoBytes,
                      fit: BoxFit.cover,
                      gaplessPlayback: true,
                      cacheWidth:
                          (MediaQuery.sizeOf(context).width *
                                  MediaQuery.devicePixelRatioOf(context))
                              .round()
                              .clamp(1, 2048)
                              .toInt(),
                    ),
                  ),
                if (fullscreen && photoBytes != null)
                  Positioned.fill(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            overlayBase.withValues(alpha: 0.58),
                            overlayBase.withValues(alpha: 0.42),
                            overlayBase.withValues(alpha: 0.68),
                          ],
                        ),
                      ),
                    ),
                  ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      _buildHeader(
                        hideAvatar: fullscreen && photoBytes != null,
                      ),
                      const SizedBox(height: 32),
                      _buildPhoneSection(),
                      const SizedBox(height: 24),
                      _buildConnectedAppsSection(l10n),
                      const SizedBox(height: 24),
                      _buildSettingsSection(l10n),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildHeader({bool hideAvatar = false}) {
    return Column(
      children: [
        if (!hideAvatar)
          ContactAvatar(
            contactId: _contact.id,
            displayName: _contact.displayName,
            size: 100,
            thumbnail: _contact.thumbnail,
            photo: _contact.photo,
            preferFullPhoto: true,
            fontSizeFactor: 0.35,
            onTap: _showPhotoOptions,
          ),
        SizedBox(height: hideAvatar ? 0 : 16),
        Text(
          _contact.displayName,
          style: context.dialerTextStyle(
            DialerFontRole.pageTitle,
            TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPhoneSection() {
    if (_contact.phones.isEmpty) return const SizedBox.shrink();

    return Column(
      children: _contact.phones
          .map(
            (phone) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerLow,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.phone_outlined,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    size: 24,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          phone.number,
                          style: context.dialerTextStyle(
                            DialerFontRole.primary,
                            TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Text(
                          phone.label.name.toLowerCase(),
                          style: context.dialerTextStyle(
                            DialerFontRole.secondary,
                            TextStyle(
                              color: Theme.of(
                                context,
                              ).colorScheme.onSurfaceVariant,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.call_outlined,
                      color: Theme.of(context).colorScheme.onSurface,
                      size: 24,
                    ),
                    onPressed: () => _call(phone.number),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.message_outlined,
                      color: Theme.of(context).colorScheme.onSurface,
                      size: 22,
                    ),
                    onPressed: () => _message(phone.number),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }

  Widget _buildConnectedAppsSection(AppLocalizations l10n) {
    if (_contact.socialMedias.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Text(
            l10n.connectedApps,
            style: context.dialerTextStyle(
              DialerFontRole.sectionHeader,
              TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        ..._contact.socialMedias.map((social) {
          IconData icon = Icons.link_outlined;
          Color color = Theme.of(context).colorScheme.onSurface;
          if (social.label == SocialMediaLabel.whatsapp) {
            icon = Icons.chat_outlined;
            color = const Color(0xFF25D366);
          } else if (social.label == SocialMediaLabel.telegram) {
            icon = Icons.send_outlined;
            color = const Color(0xFF24A1DE);
          } else if (social.label == SocialMediaLabel.facebook) {
            icon = Icons.public_outlined;
            color = const Color(0xFF1877F2);
          }

          return _buildAppTile(
            social.label.name.capitalize(),
            icon,
            color,
            subtitle: social.userName,
          );
        }),
      ],
    );
  }

  Widget _buildAppTile(
    String title,
    IconData icon,
    Color iconColor, {
    String? subtitle,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 24),
      leading: Icon(icon, color: iconColor, size: 28),
      title: Text(
        title,
        style: context.dialerTextStyle(
          DialerFontRole.primary,
          TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 15,
          ),
        ),
      ),
      subtitle: subtitle != null
          ? Text(
              subtitle,
              style: context.dialerTextStyle(
                DialerFontRole.secondary,
                TextStyle(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  fontSize: 12,
                ),
              ),
            )
          : null,
      trailing: Icon(
        Icons.keyboard_arrow_right,
        color: Theme.of(
          context,
        ).colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
      ),
      onTap: () {},
    );
  }

  Widget _buildSettingsSection(AppLocalizations l10n) {
    final String simText = switch (_callingSimMode) {
      'ask' => l10n.askEveryTime,
      'fixed' when _preferredSim != null => l10n.simSlot(_preferredSim! + 1),
      'fixed' => l10n.simNotSet,
      _ => l10n.simSameAsSystem,
    };

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Text(
            l10n.contactSettings,
            style: context.dialerTextStyle(
              DialerFontRole.sectionHeader,
              TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 24),
          leading: Icon(
            Icons.sim_card_outlined,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            size: 22,
          ),
          title: Text(
            l10n.setCallingSim,
            style: context.dialerTextStyle(
              DialerFontRole.primary,
              TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 15,
              ),
            ),
          ),
          subtitle: Text(
            simText,
            style: context.dialerTextStyle(
              DialerFontRole.secondary,
              TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontSize: 12,
              ),
            ),
          ),
          onTap: _setCallingSim,
        ),
        ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 24),
          leading: Icon(
            Icons.music_note_outlined,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            size: 22,
          ),
          title: Text(
            l10n.contactRingtone,
            style: context.dialerTextStyle(
              DialerFontRole.primary,
              TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 15,
              ),
            ),
          ),
          subtitle: Text(
            switch (_ringtoneSelection) {
              'silent' => l10n.ringtoneSilent,
              'ringtone' => _customRingtoneName ?? l10n.customRingtone,
              _ => l10n.ringtoneDefault,
            },
            style: context.dialerTextStyle(
              DialerFontRole.secondary,
              TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontSize: 12,
              ),
            ),
          ),
          onTap: _pickRingtone,
        ),
        _buildSettingTile(
          l10n.shareContact,
          Icons.share_outlined,
          onTap: _shareContact,
        ),
        ValueListenableBuilder<List<String>>(
          valueListenable: BlockingManager.blockedNumbersNotifier,
          builder: (context, _, __) {
            final isBlocked = _contact.phones.any(
              (n) => BlockingManager.isBlocked(n.number),
            );
            return _buildSettingTile(
              isBlocked ? l10n.unblockNumbers : l10n.blockNumbers,
              Icons.block,
              textColor: isBlocked
                  ? Theme.of(context).colorScheme.onSurface
                  : Colors.redAccent,
              iconColor: isBlocked
                  ? Theme.of(context).colorScheme.onSurface
                  : Colors.redAccent,
              onTap: _toggleBlockContact,
            );
          },
        ),
        _buildSettingTile(
          l10n.delete,
          Icons.delete_outline,
          textColor: Colors.redAccent,
          iconColor: Colors.redAccent,
          onTap: _deleteContact,
        ),
      ],
    );
  }

  Widget _buildSettingTile(
    String title,
    IconData icon, {
    Color? textColor,
    Color? iconColor,
    VoidCallback? onTap,
  }) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 24),
      leading: Icon(
        icon,
        color: iconColor ?? Theme.of(context).colorScheme.onSurfaceVariant,
        size: 22,
      ),
      title: Text(
        title,
        style: context.dialerTextStyle(
          DialerFontRole.primary,
          TextStyle(
            color: textColor ?? Theme.of(context).colorScheme.onSurface,
            fontSize: 15,
          ),
        ),
      ),
      onTap: onTap ?? () {},
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    if (isEmpty) return this;
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

/// In-app ringtone picker — never launches the system picker, so the phone-wide
/// default ringtone cannot be mutated as a side effect.
class _ContactRingtoneSheet extends StatefulWidget {
  const _ContactRingtoneSheet({
    required this.tones,
    required this.currentSelection,
    required this.currentUri,
    required this.defaultLabel,
    required this.silentLabel,
    required this.title,
    required this.onPreview,
    required this.onStopPreview,
    required this.onSelected,
  });

  final List<Map<String, dynamic>> tones;
  final String currentSelection;
  final String? currentUri;
  final String defaultLabel;
  final String silentLabel;
  final String title;
  final Future<void> Function(String? uri) onPreview;
  final Future<void> Function() onStopPreview;
  final Future<void> Function(String selection, String? uri) onSelected;

  @override
  State<_ContactRingtoneSheet> createState() => _ContactRingtoneSheetState();
}

class _ContactRingtoneSheetState extends State<_ContactRingtoneSheet> {
  late String _selection;
  String? _uri;

  @override
  void initState() {
    super.initState();
    _selection = widget.currentSelection;
    _uri = widget.currentUri;
  }

  @override
  void dispose() {
    widget.onStopPreview();
    super.dispose();
  }

  Future<void> _choose(String selection, String? uri) async {
    setState(() {
      _selection = selection;
      _uri = uri;
    });
    if (selection == 'ringtone') {
      await widget.onPreview(uri);
    } else {
      await widget.onStopPreview();
    }
    try {
      await widget.onSelected(selection, uri);
    } catch (_) {
      // Parent shows the error snackbar; keep sheet open for another try.
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final maxHeight = MediaQuery.sizeOf(context).height * 0.75;

    return Container(
      constraints: BoxConstraints(maxHeight: maxHeight),
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 20, 24, 8),
              child: Text(
                widget.title,
                style: context.dialerTextStyle(
                  DialerFontRole.sectionHeader,
                  TextStyle(
                    color: scheme.onSurface,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: widget.tones.length + 2,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return _tile(
                      label: widget.defaultLabel,
                      selected: _selection == 'default',
                      onTap: () => _choose('default', null),
                    );
                  }
                  if (index == 1) {
                    return _tile(
                      label: widget.silentLabel,
                      selected: _selection == 'silent',
                      onTap: () => _choose('silent', 'silent'),
                    );
                  }
                  final tone = widget.tones[index - 2];
                  final uri = tone['uri'] as String?;
                  final title = (tone['title'] as String?) ?? '';
                  final selected =
                      _selection == 'ringtone' && _uri != null && _uri == uri;
                  return _tile(
                    label: title,
                    selected: selected,
                    onTap: () => _choose('ringtone', uri),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _tile({
    required String label,
    required bool selected,
    required VoidCallback onTap,
  }) {
    final scheme = Theme.of(context).colorScheme;
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 24),
      title: Text(
        label,
        style: context.dialerTextStyle(
          DialerFontRole.primary,
          TextStyle(
            color: scheme.onSurface,
            fontSize: 15,
            fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ),
      trailing: selected
          ? Icon(Icons.check_rounded, color: scheme.primary)
          : null,
      onTap: onTap,
    );
  }
}
