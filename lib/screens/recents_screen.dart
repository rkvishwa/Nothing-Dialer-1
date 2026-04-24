import 'dart:async';
import 'dart:math' as math;

import 'package:call_log/call_log.dart';
import 'package:flutter/foundation.dart' show compute;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:permission_handler/permission_handler.dart';
import '../services/blocking_manager.dart';
import '../services/favourites_manager.dart';
import '../services/recents_compute.dart';
import '../services/voice_search.dart';
import 'sim_picker_sheet.dart';
import 'floating_dialpad.dart';
import 'call_history_screen.dart';
import 'contact_detail_screen.dart';
import '../main.dart' as main_app;

// ─── Grouped call model ──────────────────────────────────────────────────────

/// Represents consecutive calls to/from the same number with the same type.
class _GroupedCall {
  final String name;
  final String number;
  final CallType? callType;
  final int count;
  final int? timestamp; // most recent
  final int? duration; // most recent
  final String? simDisplayName;
  final String relativeTime;
  final List<String> entryRelativeTimes;
  final List<CallLogEntry> entries;

  /// True when this row is from the "Frequently contacted" block (special expand UI).
  final bool isFrequentContact;

  _GroupedCall({
    required this.name,
    required this.number,
    required this.callType,
    required this.count,
    required this.timestamp,
    required this.duration,
    required this.simDisplayName,
    required this.relativeTime,
    required this.entryRelativeTimes,
    required this.entries,
    this.isFrequentContact = false,
  });
}

/// Section header for the "Frequently contacted" block (with period subtitle).
class _FrequentHeader {
  final String periodSubtitle;
  const _FrequentHeader({required this.periodSubtitle});
}

/// Marker before the main date-grouped call history when frequent section is shown.
class _RecentHistoryHeader {
  const _RecentHistoryHeader();
}

/// Horizontal favourites strip at top of Recents.
class _FavouritesRowMarker {
  const _FavouritesRowMarker();
}

class _LoadMoreMarker {
  const _LoadMoreMarker();
}

// ─── Screen ──────────────────────────────────────────────────────────────────

/// Displays the device's call log grouped by date, with consecutive
/// same-number/same-type calls merged (like Google Phone).
class RecentsScreen extends StatefulWidget {
  const RecentsScreen({super.key});

  @override
  State<RecentsScreen> createState() => _RecentsScreenState();
}

class _RecentsScreenState extends State<RecentsScreen>
    with AutomaticKeepAliveClientMixin, WidgetsBindingObserver {
  @override
  bool get wantKeepAlive => true;

  List<CallLogEntry> _entries = [];
  List<Object> _flatItems = [];
  bool _loading = true;
  bool _permissionDenied = false;
  String _searchQuery = '';
  final _searchController = TextEditingController();
  final ScrollController _listScrollController = ScrollController();

  static const _initialPageSize = 500;
  int _loadedLimit = _initialPageSize;
  int? _lastMaxTimestampMs;
  bool _rebuildInFlight = false;

  static const _channel = MethodChannel('nothing_dialer/control');

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _loadCallLog();
    BlockingManager.blockedNumbersNotifier.addListener(
      _onBlockedNumbersChanged,
    );
    main_app.recentsRefreshTickNotifier.addListener(_handleRecentsRefreshTick);
    main_app.clearRecentsSearchTickNotifier.addListener(
      _handleExternalClearSearch,
    );
    main_app.frequentContactsPeriodNotifier.addListener(
      _onFrequentSettingsChanged,
    );
    main_app.frequentContactsMaxNotifier.addListener(
      _onFrequentSettingsChanged,
    );
    main_app.recentsFilterNotifier.addListener(
      _onRecentsFilterOrFavouritesChanged,
    );
    FavouritesManager.favouritesNotifier.addListener(
      _onRecentsFilterOrFavouritesChanged,
    );
    FavouritesManager.showFavouritesStripOnRecents.addListener(
      _onRecentsFilterOrFavouritesChanged,
    );
  }

  void _onRecentsFilterOrFavouritesChanged() {
    if (mounted) unawaited(_scheduleRebuild());
  }

  void _onFrequentSettingsChanged() {
    if (mounted) unawaited(_scheduleRebuild());
  }

  void _onBlockedNumbersChanged() {
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    BlockingManager.blockedNumbersNotifier.removeListener(
      _onBlockedNumbersChanged,
    );
    main_app.recentsRefreshTickNotifier.removeListener(
      _handleRecentsRefreshTick,
    );
    main_app.clearRecentsSearchTickNotifier.removeListener(
      _handleExternalClearSearch,
    );
    main_app.frequentContactsPeriodNotifier.removeListener(
      _onFrequentSettingsChanged,
    );
    main_app.frequentContactsMaxNotifier.removeListener(
      _onFrequentSettingsChanged,
    );
    main_app.recentsFilterNotifier.removeListener(
      _onRecentsFilterOrFavouritesChanged,
    );
    FavouritesManager.favouritesNotifier.removeListener(
      _onRecentsFilterOrFavouritesChanged,
    );
    FavouritesManager.showFavouritesStripOnRecents.removeListener(
      _onRecentsFilterOrFavouritesChanged,
    );
    main_app.recentsSearchActiveNotifier.value = false;
    _listScrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      unawaited(_maybeReloadCallLogIfNewer());
    }
  }

  Future<void> _maybeReloadCallLogIfNewer() async {
    if (!mounted || _permissionDenied || _loading) return;
    try {
      final fresh = await CallLog.get();
      if (!mounted) return;
      final list = fresh.toList()
        ..sort((a, b) => (b.timestamp ?? 0).compareTo(a.timestamp ?? 0));
      if (list.isEmpty) {
        if (_entries.isNotEmpty) await _loadCallLog();
        return;
      }
      final maxTs = list.first.timestamp;
      if (maxTs != null && maxTs != _lastMaxTimestampMs) {
        await _loadCallLog();
      }
    } catch (_) {}
  }

  void _handleRecentsRefreshTick() {
    if (mounted) unawaited(_loadCallLog());
  }

  void _handleExternalClearSearch() {
    if (!mounted || _searchQuery.isEmpty) return;
    setState(() {
      _searchController.clear();
      _searchQuery = '';
      main_app.recentsSearchActiveNotifier.value = false;
    });
    unawaited(_scheduleRebuild());
    _scheduleResetScrollToTop();
  }

  void _scheduleResetScrollToTop() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || !_listScrollController.hasClients) return;
      _listScrollController.jumpTo(0);
    });
  }

  Future<void> _loadCallLog() async {
    setState(() => _loading = true);

    final status = await Permission.phone.request();
    if (!status.isGranted) {
      setState(() {
        _loading = false;
        _permissionDenied = true;
      });
      return;
    }

    try {
      final entries = await CallLog.get();
      await BlockingManager.refreshBlockedNumbers();

      if (!mounted) return;
      final list = entries.toList()
        ..sort((a, b) => (b.timestamp ?? 0).compareTo(a.timestamp ?? 0));
      _entries = list;
      _lastMaxTimestampMs = list.isEmpty ? null : list.first.timestamp;
      _loadedLimit = _initialPageSize;
      await _scheduleRebuild();
      if (mounted) setState(() => _loading = false);
    } catch (_) {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _scheduleRebuild() async {
    if (!mounted) return;
    if (_rebuildInFlight) return;
    _rebuildInFlight = true;
    try {
      if (_entries.isEmpty) {
        if (mounted) {
          setState(() => _flatItems = []);
        }
        return;
      }
      final serialized = _entries.map(serializeCallLogEntry).toList();
      final nowMs = DateTime.now().millisecondsSinceEpoch;
      final output = await compute(
        recentsComputeMain,
        RecentsComputeArgs(
          allEntries: serialized,
          mainListMaxEntries: _loadedLimit.clamp(0, serialized.length),
          recentsFilter: main_app.recentsFilterNotifier.value,
          searchQuery: _searchQuery,
          frequentMax: main_app.frequentContactsMaxNotifier.value,
          frequentPeriod: main_app.frequentContactsPeriodNotifier.value,
          showFavouritesStrip:
              FavouritesManager.showFavouritesStripOnRecents.value,
          showFrequentSection: true,
          nowMs: nowMs,
        ),
      );
      if (!mounted) return;
      setState(() {
        _flatItems = _flatItemsFromOutput(output);
        if (_entries.length > _loadedLimit) {
          _flatItems.add(const _LoadMoreMarker());
        }
      });
    } finally {
      _rebuildInFlight = false;
    }
  }

  void _loadMore() {
    setState(() {
      _loadedLimit += _initialPageSize;
    });
    unawaited(_scheduleRebuild());
  }

  _GroupedCall _groupedCallFromMap(Map<String, dynamic> m) {
    final entryMaps = (m['entries'] as List<dynamic>)
        .map((e) => CallLogEntry.fromMap(Map<dynamic, dynamic>.from(e as Map)))
        .toList();
    return _GroupedCall(
      name: m['name'] as String,
      number: m['number'] as String,
      callType: getCallType((m['callType'] as num).toInt()),
      count: (m['count'] as num).toInt(),
      timestamp: (m['timestamp'] as num?)?.toInt(),
      duration: (m['duration'] as num?)?.toInt(),
      simDisplayName: m['simDisplayName'] as String?,
      relativeTime: m['relativeTime'] as String,
      entryRelativeTimes: (m['entryRelativeTimes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      entries: entryMaps,
      isFrequentContact: m['isFrequentContact'] as bool? ?? false,
    );
  }

  List<Object> _flatItemsFromOutput(RecentsProcessOutput out) {
    final r = <Object>[];
    for (final m in out.flatItems) {
      final kind = m['kind'] as String;
      switch (kind) {
        case 'favourites_marker':
          r.add(const _FavouritesRowMarker());
          break;
        case 'frequent_header':
          r.add(_FrequentHeader(periodSubtitle: m['subtitle'] as String));
          break;
        case 'recent_history_header':
          r.add(const _RecentHistoryHeader());
          break;
        case 'section':
          r.add(m['label'] as String);
          break;
        case 'group':
          r.add(_groupedCallFromMap(Map<String, dynamic>.from(m)));
          break;
      }
    }
    return r;
  }

  Widget _buildFavouritesStrip() {
    return ValueListenableBuilder<List<FavouriteEntry>>(
      valueListenable: FavouritesManager.favouritesNotifier,
      builder: (context, favs, _) {
        if (favs.isEmpty) {
          return Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Text(
                    'Favourites',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.6,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                  child: Text(
                    'No favourites yet. Star a contact, long-press a call, or use the Favourites tab.',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                      fontSize: 13,
                      height: 1.35,
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        return Padding(
          padding: const EdgeInsets.only(top: 4, bottom: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                child: Text(
                  'Favourites',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.6,
                  ),
                ),
              ),
              SizedBox(
                height: 96,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  itemCount: favs.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 16),
                  itemBuilder: (context, i) {
                    final e = favs[i];
                    final display = e.name.isNotEmpty ? e.name : e.number;
                    final initial = display.isNotEmpty
                        ? display[0].toUpperCase()
                        : '?';
                    final syn = _GroupedCall(
                      name: e.name,
                      number: e.number,
                      callType: CallType.outgoing,
                      count: 1,
                      timestamp: DateTime.now().millisecondsSinceEpoch,
                      duration: 0,
                      simDisplayName: null,
                      relativeTime: '',
                      entryRelativeTimes: const [''],
                      entries: <CallLogEntry>[],
                    );
                    return SizedBox(
                      width: 68,
                      child: GestureDetector(
                        onLongPressStart: (details) {
                          _showOptions(
                            syn,
                            details.globalPosition,
                            fromFavouriteStrip: true,
                          );
                        },
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () => _call(e.number),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 56,
                                  height: 56,
                                  child: Center(
                                    child: Text(
                                      initial,
                                      style: TextStyle(
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.primary,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  display,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.onSurface,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _call(String number) async {
    HapticFeedback.mediumImpact();
    final simIndex = await showSimPicker(context);
    if (simIndex == null || !mounted) return;

    try {
      await _channel.invokeMethod('placeCallWithSim', {
        'number': number,
        'simIndex': simIndex,
      });
    } on PlatformException catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Call error: ${e.message}'),
            backgroundColor: Theme.of(
              context,
            ).colorScheme.surfaceContainerHighest,
          ),
        );
      }
    }
  }

  void _showOptions(
    _GroupedCall group,
    Offset globalPosition, {
    bool fromFavouriteStrip = false,
  }) {
    FocusScope.of(context).unfocus();
    HapticFeedback.selectionClick();

    final cs = Theme.of(context).colorScheme;

    final specs = <_RecentsMenuItemSpec>[
      _RecentsMenuItemSpec(
        icon: Icons.copy_rounded,
        label: 'Copy number',
        value: 'copy',
      ),
      _RecentsMenuItemSpec(
        icon: Icons.edit_outlined,
        label: 'Edit number before call',
        value: 'edit_before_call',
      ),
      if (fromFavouriteStrip)
        _RecentsMenuItemSpec(
          icon: Icons.star_outline,
          label: 'Remove from favourites',
          value: 'remove_favourite',
        ),
      if (!fromFavouriteStrip && FavouritesManager.isFavourite(group.number))
        _RecentsMenuItemSpec(
          icon: Icons.star_rounded,
          label: 'Remove from favourites',
          value: 'remove_favourite_recents',
          iconColor: cs.primary,
        ),
      if (!fromFavouriteStrip && !FavouritesManager.isFavourite(group.number))
        _RecentsMenuItemSpec(
          icon: Icons.star_outline_rounded,
          label: 'Add to favourites',
          value: 'add_favourite_recents',
        ),
      if (BlockingManager.isBlocked(group.number))
        _RecentsMenuItemSpec(
          icon: Icons.check_circle_outline,
          label: 'Unblock number',
          value: 'unblock',
        )
      else
        _RecentsMenuItemSpec(
          icon: Icons.block,
          label: 'Block number',
          value: 'block',
        ),
      if (!fromFavouriteStrip)
        const _RecentsMenuItemSpec(
          icon: Icons.delete_outline,
          label: 'Delete',
          value: 'delete',
          iconColor: Color(0xFFFF453A),
          textColor: Color(0xFFFF453A),
        ),
    ];

    final overlay =
        Overlay.of(context).context.findRenderObject()! as RenderBox;
    // Sit just under the row so the menu doesn’t cover the pressed number.
    final anchor =
        overlay.globalToLocal(globalPosition) + const Offset(0, 14);

    showGeneralDialog<String>(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black.withValues(alpha: 0.25),
      transitionDuration: const Duration(milliseconds: 130),
      transitionBuilder: (ctx, animation, secondaryAnimation, child) => child,
      pageBuilder: (ctx, animation, secondaryAnimation) {
        final curved = CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutCubic,
        );
        final media = MediaQuery.of(ctx);
        final dialogCs = Theme.of(ctx).colorScheme;
        return Stack(
          children: [
            Positioned.fill(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => Navigator.pop(ctx),
              ),
            ),
            CustomSingleChildLayout(
              delegate: _RecentsMenuLayoutDelegate(
                anchor: anchor,
                screenSize: media.size,
                safePadding: media.padding,
              ),
              child: FadeTransition(
                opacity: curved,
                child: ScaleTransition(
                  scale: Tween<double>(begin: 0.96, end: 1.0).animate(curved),
                  alignment: Alignment.topLeft,
                  child: Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                    elevation: 0,
                    clipBehavior: Clip.antiAlias,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 176,
                        maxWidth: 236,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(18, 14, 18, 12),
                            child: Text(
                              group.number,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: dialogCs.onSurfaceVariant,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.15,
                              ),
                            ),
                          ),
                          for (final spec in specs)
                            InkWell(
                              onTap: () => Navigator.pop(ctx, spec.value),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 18,
                                  vertical: 13,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      spec.icon,
                                      size: 18,
                                      color: spec.iconColor ??
                                          dialogCs.onSurface,
                                    ),
                                    const SizedBox(width: 14),
                                    Expanded(
                                      child: Text(
                                        spec.label,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: spec.textColor ??
                                              dialogCs.onSurface,
                                          fontSize: 14,
                                          height: 1.25,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    ).then((value) {
      if (!mounted) return;
      if (value == 'copy') {
        Clipboard.setData(ClipboardData(text: group.number));
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Number copied',
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
            ),
            backgroundColor: Theme.of(
              context,
            ).colorScheme.surfaceContainerHighest,
          ),
        );
      } else if (value == 'edit_before_call') {
        // Find the dialer shell and open dialpad with initial digits.
        // We know DialerShell handles floating_dialpad state. The recents screen is nested inside DialerShell's PageView.
        // Easiest is to pop back to shell and broadcast a notification or use a global key, but DialerShell currently handles opening it via FAB.
        // We can just call showFloatingDialpad from floating_dialpad.dart directly here.
        importFloatingDialpad(group.number);
      } else if (value == 'remove_favourite') {
        FavouritesManager.removeFavourite(group.number);
      } else if (value == 'add_favourite_recents') {
        FavouritesManager.addFavourite(
          FavouriteEntry(id: '', number: group.number, name: group.name),
        );
      } else if (value == 'remove_favourite_recents') {
        FavouritesManager.removeFavourite(group.number);
      } else if (value == 'block') {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: Theme.of(
              context,
            ).colorScheme.surfaceContainerHighest,
            title: Text(
              'Block number?',
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
            ),
            content: Text(
              'You will no longer receive calls or texts from ${group.number}.',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  'Cancel',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  Navigator.pop(context);
                  try {
                    // Look for contact and block all numbers
                    final contacts = await FlutterContacts.getContacts(
                      withProperties: true,
                    );
                    final target = _normalise(group.number);
                    Contact? matchedContact;
                    for (var c in contacts) {
                      if (c.phones.any((p) => _normalise(p.number) == target)) {
                        matchedContact = c;
                        break;
                      }
                    }

                    if (matchedContact != null) {
                      debugPrint(
                        'RecentsScreen: Blocking all numbers for contact ${matchedContact.displayName}',
                      );
                      for (var phone in matchedContact.phones) {
                        await BlockingManager.blockNumber(phone.number);
                      }
                    } else {
                      debugPrint(
                        'RecentsScreen: No contact match, blocking number ${group.number}',
                      );
                      await BlockingManager.blockNumber(group.number);
                    }

                    if (mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Blocked'),
                          backgroundColor: Color(0xFF333333),
                        ),
                      );
                      _loadCallLog();
                    }
                  } catch (e) {
                    if (mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Could not block'),
                          backgroundColor: Color(0xFF333333),
                        ),
                      );
                    }
                  }
                },
                child: const Text(
                  'Block',
                  style: TextStyle(color: Color(0xFFFF453A)),
                ),
              ),
            ],
          ),
        );
      } else if (value == 'contact_info') {
        _handleContactAction(group);
      } else if (value == 'unblock') {
        _unblockNumber(group.number);
      } else if (value == 'delete') {
        _deleteCallLog(group);
      }
    });
  }

  Future<void> _handleContactAction(_GroupedCall group) async {
    final normalizedTarget = _normalise(group.number);
    final targetSuffix = normalizedTarget.length > 7
        ? normalizedTarget.substring(normalizedTarget.length - 7)
        : normalizedTarget;

    if (group.name.isNotEmpty) {
      final contacts = await FlutterContacts.getContacts(
        withProperties: true,
        withPhoto: true,
      );

      Contact? found;

      // Pass 1: Exact normalized number match
      for (final c in contacts) {
        if (c.phones.any((p) => _normalise(p.number) == normalizedTarget)) {
          found = c;
          break;
        }
      }

      // Pass 2: Suffix-based match (handles country code differences)
      if (found == null && targetSuffix.isNotEmpty) {
        for (final c in contacts) {
          if (c.phones.any((p) {
            final normalizedPhone = _normalise(p.number);
            if (normalizedPhone.isEmpty) return false;
            return normalizedPhone.endsWith(targetSuffix) ||
                targetSuffix.endsWith(normalizedPhone);
          })) {
            found = c;
            break;
          }
        }
      }

      // Pass 3: Match by display name (handles Google account contacts
      // where the call log has the name from Android's caller ID but
      // the number format differs between accounts)
      if (found == null) {
        final lowerName = group.name.toLowerCase().trim();
        for (final c in contacts) {
          if (c.displayName.toLowerCase().trim() == lowerName) {
            found = c;
            break;
          }
        }
      }

      if (!mounted) return;
      if (found != null) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ContactDetailScreen(contact: found!),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Contact not saved on this device'),
            backgroundColor: Theme.of(
              context,
            ).colorScheme.surfaceContainerHighest,
          ),
        );
      }
    } else {
      await FlutterContacts.openExternalInsert(
        Contact(phones: [Phone(group.number)]),
      );
    }
  }

  Future<void> _unblockNumber(String number) async {
    try {
      // 1. Find if this number belongs to a contact
      final contacts = await FlutterContacts.getContacts(withProperties: true);
      final target = _normalise(number);
      Contact? matchedContact;

      for (var c in contacts) {
        if (c.phones.any((p) => _normalise(p.number) == target)) {
          matchedContact = c;
          break;
        }
      }

      if (matchedContact != null) {
        debugPrint(
          'RecentsScreen: Unblocking all numbers for contact ${matchedContact.displayName}',
        );
        for (var phone in matchedContact.phones) {
          await BlockingManager.unblockNumber(phone.number);
        }
      } else {
        debugPrint(
          'RecentsScreen: No contact match, unblocking number $number',
        );
        await BlockingManager.unblockNumber(number);
      }

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Unblocked'),
            backgroundColor: Theme.of(
              context,
            ).colorScheme.surfaceContainerHighest,
          ),
        );
        _loadCallLog(); // Refresh list
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Could not unblock'),
            backgroundColor: Theme.of(
              context,
            ).colorScheme.surfaceContainerHighest,
          ),
        );
      }
    }
  }

  Future<void> _deleteCallLog(_GroupedCall group) async {
    for (final entry in group.entries) {
      if (entry.id != null) {
        await CallLog.deleteCallLog(entry.id!);
      }
    }
    _loadCallLog(); // Refresh list after deletion
  }

  /// Normalise a number string to just digits for comparison.
  String _normalise(String? number) =>
      (number ?? '').replaceAll(RegExp(r'[^\d+]'), '');

  Color _callTypeColor(CallType? type) {
    switch (type) {
      case CallType.missed:
      case CallType.rejected:
        return const Color(0xFFFF453A); // red
      case CallType.incoming:
        return Color(0xFF30D158); // green
      default:
        return Theme.of(context).colorScheme.onSurfaceVariant;
    }
  }

  IconData _callTypeIcon(CallType? type) {
    switch (type) {
      case CallType.missed:
        return Icons.call_missed;
      case CallType.rejected:
        return Icons.call_missed_outgoing;
      case CallType.incoming:
        return Icons.call_received;
      default:
        return Icons.call_made;
    }
  }

  // ── Build ───────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    super.build(context);
    if (_loading) {
      return Center(
        child: CircularProgressIndicator(
          color: Theme.of(context).colorScheme.onSurface,
          strokeWidth: 1.5,
        ),
      );
    }

    if (_permissionDenied) {
      return _EmptyState(
        icon: Icons.phone_locked,
        title: 'Permission needed',
        subtitle: 'Grant phone permission to see your call history.',
        buttonLabel: 'Open Settings',
        onButton: openAppSettings,
      );
    }

    return Column(
      children: [
        // Search bar
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 4),
          child: TextField(
            controller: _searchController,
            onChanged: (v) {
              setState(() {
                _searchQuery = v;
                main_app.recentsSearchActiveNotifier.value = v.isNotEmpty;
              });
              unawaited(_scheduleRebuild());
              if (v.isEmpty) _scheduleResetScrollToTop();
            },
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
              fontSize: 16,
            ),
            decoration: InputDecoration(
              hintText: 'Search recent calls',
              hintStyle: TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontSize: 16,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
              suffixIcon: _searchQuery.isNotEmpty
                  ? IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        size: 20,
                      ),
                      onPressed: () {
                        setState(() {
                          _searchController.clear();
                          _searchQuery = '';
                          main_app.recentsSearchActiveNotifier.value = false;
                        });
                        unawaited(_scheduleRebuild());
                        _scheduleResetScrollToTop();
                      },
                    )
                  : IconButton(
                      icon: Icon(
                        Icons.mic_none,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        size: 22,
                      ),
                      tooltip: 'Voice search',
                      onPressed: () async {
                        final spoken = await VoiceSearch.listenWithFeedback(
                          context,
                        );
                        if (spoken == null || !mounted) return;
                        setState(() {
                          _searchController.text = spoken;
                          _searchController.selection =
                              TextSelection.fromPosition(
                                TextPosition(offset: spoken.length),
                              );
                          _searchQuery = spoken;
                          main_app.recentsSearchActiveNotifier.value = true;
                        });
                        unawaited(_scheduleRebuild());
                      },
                    ),
              filled: false,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(vertical: 12),
            ),
          ),
        ),

        // Call list
        Expanded(
          child: RefreshIndicator(
            color: Theme.of(context).colorScheme.onSurface,
            backgroundColor: Theme.of(context).colorScheme.surface,
            onRefresh: _loadCallLog,
            child: ValueListenableBuilder<List<String>>(
              valueListenable: BlockingManager.blockedNumbersNotifier,
              builder: (context, _, __) {
                if (_flatItems.isEmpty) {
                  return SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.45,
                      child: const _EmptyState(
                        icon: Icons.history,
                        title: 'No recent calls',
                        subtitle: 'Your call history will appear here.',
                      ),
                    ),
                  );
                }
                return ListView.builder(
                  controller: _listScrollController,
                  padding: const EdgeInsets.only(top: 8, bottom: 120),
                  itemCount: _flatItems.length,
                  itemBuilder: (context, idx) {
                    final item = _flatItems[idx];
                    if (item is _LoadMoreMarker) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(24, 8, 24, 32),
                        child: OutlinedButton(
                          onPressed: _loadMore,
                          child: const Text('Load more'),
                        ),
                      );
                    }
                    if (item is _FavouritesRowMarker) {
                      return _buildFavouritesStrip();
                    }
                    if (item is _FrequentHeader) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Text(
                                'Frequently contacted',
                                style: TextStyle(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurfaceVariant,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.6,
                                ),
                              ),
                            ),
                            Text(
                              item.periodSubtitle,
                              style: TextStyle(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSurfaceVariant,
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                    if (item is _RecentHistoryHeader) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
                        child: Text(
                          'Recent history',
                          style: TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.6,
                          ),
                        ),
                      );
                    }
                    if (item is String) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
                        child: Text(
                          item,
                          style: TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.6,
                          ),
                        ),
                      );
                    } else if (item is _GroupedCall) {
                      return _CallTile(
                        group: item,
                        isBlocked: BlockingManager.isBlocked(item.number),
                        typeColor: _callTypeColor(item.callType),
                        typeIcon: _callTypeIcon(item.callType),
                        onCallTap: () => _call(item.number),
                        onLongPress: (Offset globalPosition) =>
                            _showOptions(item, globalPosition),
                        onContactActionTap: () => _handleContactAction(item),
                      );
                    }
                    return const SizedBox.shrink();
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  void importFloatingDialpad(String number) {
    // Show the floating dialpad directly from recents screen
    showFloatingDialpad(
      context,
      initialDigits: number,
      onCall: (digits, simIndex) async {
        try {
          await _channel.invokeMethod('placeCallWithSim', {
            'number': digits,
            'simIndex': simIndex,
          });
        } on PlatformException catch (e) {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Call error: ${e.message}'),
                backgroundColor: Theme.of(
                  context,
                ).colorScheme.surfaceContainerHighest,
              ),
            );
          }
        }
      },
    );
  }
}

// ─── Call tile (Google Phone style) ──────────────────────────────────────────

class _CallTile extends StatefulWidget {
  final _GroupedCall group;
  final bool isBlocked;
  final Color typeColor;
  final IconData typeIcon;
  final VoidCallback onCallTap;
  final void Function(Offset) onLongPress;
  final VoidCallback onContactActionTap;

  const _CallTile({
    required this.group,
    this.isBlocked = false,
    required this.typeColor,
    required this.typeIcon,
    required this.onCallTap,
    required this.onLongPress,
    required this.onContactActionTap,
  });

  @override
  State<_CallTile> createState() => _CallTileState();
}

class _CallTileState extends State<_CallTile>
    with SingleTickerProviderStateMixin {
  bool _expanded = false;

  /// Frequent-contact tiles only: full call-time list hidden until expanded.
  bool _frequentTimesExpanded = false;
  bool _isPressed = false;
  late AnimationController _animController;
  late Animation<double> _expandAnimation;

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    _expandAnimation = CurvedAnimation(
      parent: _animController,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  void _toggleExpand() {
    if (!mounted) return;
    setState(() {
      _expanded = !_expanded;
      if (_expanded) {
        _animController.forward();
      } else {
        _animController.reverse();
        _frequentTimesExpanded = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final group = widget.group;
    final displayName = group.name.isNotEmpty ? group.name : group.number;
    final isMissed =
        group.callType == CallType.missed ||
        group.callType == CallType.rejected;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        GestureDetector(
          onTapDown: (_) => setState(() => _isPressed = true),
          onTapUp: (_) => setState(() => _isPressed = false),
          onTapCancel: () => setState(() => _isPressed = false),
          onTap: _toggleExpand,
          onLongPressStart: (details) {
            widget.onLongPress(details.globalPosition);
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            color: _isPressed
                ? Theme.of(
                    context,
                  ).colorScheme.onSurface.withValues(alpha: 0.08)
                : Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  // Avatar
                  SizedBox(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: widget.isBlocked
                          ? Icon(Icons.block, color: Color(0xFFFF453A), size: 24)
                          : Text(
                              displayName.isNotEmpty
                                  ? displayName[0].toUpperCase()
                                  : '?',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                    ),
                  ),
                  const SizedBox(width: 16),

                  // Name + subtitle + SIM label
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                displayName,
                                style: TextStyle(
                                  color: isMissed
                                      ? Color(0xFFFF453A)
                                      : Theme.of(context).colorScheme.onSurface,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            if (group.count > 1) ...[
                              const SizedBox(width: 6),
                              Text(
                                '(${group.count})',
                                style: TextStyle(
                                  color: isMissed
                                      ? const Color(0xFFFF453A)
                                      : Theme.of(
                                          context,
                                        ).colorScheme.onSurfaceVariant,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ],
                        ),
                        const SizedBox(height: 3),
                        Row(
                          children: [
                            Icon(
                              widget.typeIcon,
                              size: 14,
                              color: widget.typeColor,
                            ),
                            const SizedBox(width: 6),
                            Flexible(
                              child: Text(
                                group.name.isNotEmpty
                                    ? group.number
                                    : _callTypeName(group.callType),
                                style: TextStyle(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurfaceVariant,
                                  fontSize: 13,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(width: 6),
                            Text(
                              '• ${group.relativeTime}',
                              style: TextStyle(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSurfaceVariant,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // SIM icon
                  if (group.simDisplayName != null &&
                      group.simDisplayName!.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(right: 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomPaint(
                            painter: _SimCardPainter(
                              color: Theme.of(
                                context,
                              ).colorScheme.onSurfaceVariant,
                            ),
                            child: SizedBox(
                              width: 16,
                              height: 20,
                              child: Center(
                                child: Text(
                                  group.simDisplayName![0].toUpperCase(),
                                  style: TextStyle(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.onSurfaceVariant,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          if (_expanded) ...[
                            const SizedBox(height: 2),
                            Text(
                              group.simDisplayName!,
                              style: TextStyle(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSurfaceVariant,
                                fontSize: 10,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ],
                      ),
                    ),
                  IconButton(
                    onPressed: widget.onCallTap,
                    icon: Icon(
                      Icons.call_outlined,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    iconSize: 22,
                    padding: const EdgeInsets.all(12),
                    constraints: const BoxConstraints(),
                  ),
                ],
              ),
            ),
          ),
        ),

        // Expanded content
        SizeTransition(
          sizeFactor: _expandAnimation,
          child: Container(
            margin: const EdgeInsets.fromLTRB(16, 0, 16, 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (group.isFrequentContact && group.entries.length > 1) ...[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          '${group.count} calls in selected period',
                          style: TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(left: 8),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          visualDensity: VisualDensity.compact,
                        ),
                        onPressed: () => setState(
                          () =>
                              _frequentTimesExpanded = !_frequentTimesExpanded,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              _frequentTimesExpanded
                                  ? 'Show less'
                                  : 'Show all times',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Icon(
                              _frequentTimesExpanded
                                  ? Icons.expand_less
                                  : Icons.expand_more,
                              size: 20,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  if (!_frequentTimesExpanded) ...[
                    const SizedBox(height: 6),
                    Text(
                      'Most recent · ${group.entryRelativeTimes.first}',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 13,
                      ),
                    ),
                  ] else ...[
                    const SizedBox(height: 8),
                    for (int i = 0; i < group.entries.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          group.entryRelativeTimes[i],
                          style: TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                            fontSize: 13,
                          ),
                        ),
                      ),
                  ],
                ] else ...[
                  if (group.entries.length > 1)
                    for (int i = 0; i < group.entries.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          group.entryRelativeTimes[i],
                          style: TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                            fontSize: 13,
                          ),
                        ),
                      ),
                  if (group.entries.length <= 1)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        group.entryRelativeTimes[0],
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          fontSize: 13,
                        ),
                      ),
                    ),
                ],
                const SizedBox(height: 12),

                // Action Buttons (Video call, Message, History)
                Material(
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide.none,
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: [
                      _ActionItem(
                        icon: Icons.videocam_outlined,
                        label: 'Video call',
                        onTap: () async {
                          const channel = MethodChannel(
                            'nothing_dialer/control',
                          );
                          try {
                            await channel.invokeMethod('placeVideoCall', {
                              'number': group.number,
                            });
                          } catch (e) {
                            if (mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: const Text(
                                    'Could not place video call',
                                  ),
                                  backgroundColor: Theme.of(
                                    context,
                                  ).colorScheme.surfaceContainerHighest,
                                ),
                              );
                            }
                          }
                        },
                      ),
                      Divider(
                        height: 1,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withValues(alpha: 0.08),
                      ),
                      _ActionItem(
                        icon: Icons.chat_bubble_outline,
                        label: 'Message',
                        onTap: () async {
                          const channel = MethodChannel(
                            'nothing_dialer/control',
                          );
                          try {
                            await channel.invokeMethod('openSmsApp', {
                              'number': group.number,
                            });
                          } catch (e) {
                            if (mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: const Text(
                                    'Could not open messaging app',
                                  ),
                                  backgroundColor: Theme.of(
                                    context,
                                  ).colorScheme.surfaceContainerHighest,
                                ),
                              );
                            }
                          }
                        },
                      ),
                      Divider(
                        height: 1,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withValues(alpha: 0.08),
                      ),
                      _ActionItem(
                        icon: Icons.history,
                        label: 'History',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => CallHistoryScreen(
                                number: group.number,
                                contactName: group.name.isNotEmpty
                                    ? group.name
                                    : null,
                              ),
                            ),
                          );
                        },
                      ),
                      Divider(
                        height: 1,
                        color: Theme.of(
                          context,
                        ).colorScheme.onSurface.withValues(alpha: 0.08),
                      ),
                      _ActionItem(
                        icon: group.name.isNotEmpty
                            ? Icons.person_outline
                            : Icons.person_add_outlined,
                        label: group.name.isNotEmpty
                            ? 'View contact'
                            : 'Add to contact',
                        onTap: () {
                          if (_expanded) _toggleExpand();
                          widget.onContactActionTap();
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  String _callTypeName(CallType? type) {
    switch (type) {
      case CallType.missed:
        return 'Missed';
      case CallType.rejected:
        return 'Rejected';
      case CallType.incoming:
        return 'Incoming';
      case CallType.outgoing:
        return 'Outgoing';
      default:
        return '';
    }
  }
}

class _ActionItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _ActionItem({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: Theme.of(context).colorScheme.onSurface,
              size: 20,
            ),
            SizedBox(width: 16),
            Text(
              label,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── Recents long-press context menu (small flat popup) ───────────────────────

class _RecentsMenuItemSpec {
  final IconData icon;
  final String label;
  final String value;
  final Color? iconColor;
  final Color? textColor;

  const _RecentsMenuItemSpec({
    required this.icon,
    required this.label,
    required this.value,
    this.iconColor,
    this.textColor,
  });
}

class _RecentsMenuLayoutDelegate extends SingleChildLayoutDelegate {
  _RecentsMenuLayoutDelegate({
    required this.anchor,
    required this.screenSize,
    required this.safePadding,
  });

  final Offset anchor;
  final Size screenSize;
  final EdgeInsets safePadding;

  static const double _margin = 8;

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    final maxW = math.max(
      0.0,
      screenSize.width - safePadding.horizontal - _margin * 2,
    );
    final maxH = math.max(
      0.0,
      screenSize.height - safePadding.vertical - _margin * 2,
    );
    return BoxConstraints.loose(Size(maxW, maxH));
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    final minX = safePadding.left + _margin;
    final minY = safePadding.top + _margin;
    final maxX =
        screenSize.width - safePadding.right - _margin - childSize.width;
    final maxY =
        screenSize.height - safePadding.bottom - _margin - childSize.height;
    var x = anchor.dx;
    var y = anchor.dy;
    x = x.clamp(minX, math.max(minX, maxX));
    y = y.clamp(minY, math.max(minY, maxY));
    return Offset(x, y);
  }

  @override
  bool shouldRelayout(covariant _RecentsMenuLayoutDelegate oldDelegate) {
    return anchor != oldDelegate.anchor ||
        screenSize != oldDelegate.screenSize ||
        safePadding != oldDelegate.safePadding;
  }
}

// ─── Empty state ─────────────────────────────────────────────────────────────

class _EmptyState extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String? buttonLabel;
  final VoidCallback? onButton;

  const _EmptyState({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.buttonLabel,
    this.onButton,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 48,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          SizedBox(height: 16),
          Text(
            title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            subtitle,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              fontSize: 13,
            ),
            textAlign: TextAlign.center,
          ),
          if (buttonLabel != null) ...[
            SizedBox(height: 20),
            TextButton(
              onPressed: onButton,
              child: Text(
                buttonLabel!,
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _SimCardPainter extends CustomPainter {
  final Color color;

  _SimCardPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.2
      ..strokeJoin = StrokeJoin.round;

    final path = Path();
    const double cutSize = 6.0;
    const double r = 3.0;

    // Top-left cut, top right rounded, bottom right rounded, bottom left rounded.
    path.moveTo(cutSize, 0);
    path.lineTo(size.width - r, 0);
    path.quadraticBezierTo(size.width, 0, size.width, r);
    path.lineTo(size.width, size.height - r);
    path.quadraticBezierTo(
      size.width,
      size.height,
      size.width - r,
      size.height,
    );
    path.lineTo(r, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - r);
    path.lineTo(0, cutSize);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _SimCardPainter oldDelegate) =>
      oldDelegate.color != color;
}
