import 'dart:async';

import 'package:flutter/foundation.dart' show compute;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:permission_handler/permission_handler.dart';
import 'sim_picker_sheet.dart';
import 'contact_detail_screen.dart';
import '../main.dart' as main_app;
import '../services/contacts_cache.dart';
import '../services/contacts_compute.dart';
import '../services/voice_search.dart';
import 'package:nothing_dialer/l10n/app_localizations.dart';
import '../extensions/dialer_text_style.dart';
import '../services/app_font_config.dart';
import '../widgets/dialer_font_scope.dart';

/// Displays phone contacts synced from the device address book.
class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  Widget _fontScoped(Widget child) => DialerFontScope(
        surface: DialerFontSurface.contacts,
        child: child,
      );

  List<Object> _flatItems = []; // 'create_new', section String, or Contact
  int _totalContactsOnDevice = 0;
  bool _loading = true;
  bool _permissionDenied = false;
  final _searchController = TextEditingController();
  final ScrollController _listScrollController = ScrollController();
  bool _searching = false;

  static const _channel = MethodChannel('nothing_dialer/control');

  @override
  void initState() {
    super.initState();
    _loadContacts();
    _searchController.addListener(_onSearch);
    main_app.clearContactsSearchTickNotifier.addListener(
      _handleExternalClearSearch,
    );
  }

  @override
  void dispose() {
    main_app.clearContactsSearchTickNotifier.removeListener(
      _handleExternalClearSearch,
    );
    main_app.contactsSearchActiveNotifier.value = false;
    _listScrollController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _handleExternalClearSearch() {
    if (!mounted || _searchController.text.isEmpty) return;
    _searchController.clear();
    setState(() => _searching = false);
    main_app.contactsSearchActiveNotifier.value = false;
    final snap = ContactsCache.snapshot;
    if (snap != null) {
      unawaited(_rebuildFlatList(snap, ''));
    }
    _scheduleResetScrollToTop();
  }

  void _scheduleResetScrollToTop() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || !_listScrollController.hasClients) return;
      _listScrollController.jumpTo(0);
    });
  }

  Future<void> _loadContacts({bool forceRefresh = false}) async {
    setState(() => _loading = true);
    final status = await Permission.contacts.request();
    if (!status.isGranted) {
      setState(() {
        _loading = false;
        _permissionDenied = true;
      });
      return;
    }
    try {
      final contacts = await ContactsCache.load(
        forceRefresh: forceRefresh,
        fetch: () => FlutterContacts.getContacts(
          withProperties: true,
          withThumbnail: false,
        ),
      );
      if (!mounted) return;
      _totalContactsOnDevice = contacts.length;
      await _rebuildFlatList(contacts, _searchController.text);
      if (mounted) {
        setState(() {
          _loading = false;
          _permissionDenied = false;
        });
      }
    } catch (_) {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _rebuildFlatList(List<Contact> contacts, String query) async {
    final sorted = [...contacts]..sort(
        (a, b) => a.displayName.toLowerCase().compareTo(
              b.displayName.toLowerCase(),
            ),
      );
    final rows = sorted
        .map(
          (c) => <String, dynamic>{
            'id': c.id,
            'displayName': c.displayName,
            'phones': c.phones.map((p) => p.number).join(' '),
          },
        )
        .toList();
    final flatMaps = await compute(
      contactsComputeMain,
      ContactsComputeArgs(rows: rows, query: query),
    );
    if (!mounted) return;
    final byId = {for (final c in sorted) c.id: c};
    final next = <Object>[];
    for (final m in flatMaps) {
      final kind = m['kind'] as String;
      if (kind == 'create_new') {
        next.add('create_new');
      } else if (kind == 'section') {
        next.add(m['label'] as String);
      } else if (kind == 'contact_id') {
        final id = m['id'] as String;
        final c = byId[id];
        if (c != null) next.add(c);
      }
    }
    setState(() => _flatItems = next);
  }

  void _onSearch() {
    main_app.contactsSearchActiveNotifier.value =
        _searchController.text.isNotEmpty;
    final snap = ContactsCache.snapshot;
    if (snap == null) return;
    unawaited(_rebuildFlatList(snap, _searchController.text));
  }

  Future<void> _call(String number) async {
    HapticFeedback.mediumImpact();

    // Show SIM picker
    final simIndex = await showSimPicker(context);
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

  Future<void> _addContact() async {
    await FlutterContacts.openExternalInsert();
    await _loadContacts(forceRefresh: true);
  }

  void _showContactDetail(Contact contact) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => ContactDetailScreen(contact: contact)),
    );
    if (result == true) {
      await _loadContacts(forceRefresh: true);
    }
  }

  int get _visibleContactCount =>
      _flatItems.whereType<Contact>().length;

  // ── Alphabet sectioned list ─────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    if (_loading) {
      return _fontScoped(
        Center(
          child: CircularProgressIndicator(
            color: Theme.of(context).colorScheme.onSurface,
            strokeWidth: 1.5,
          ),
        ),
      );
    }
    if (_permissionDenied) {
      return _fontScoped(
        _EmptyState(
        icon: Icons.contacts,
        title: l10n.permissionNeeded,
        subtitle: l10n.grantContactsPermission,
        buttonLabel: l10n.openSettings,
        onButton: openAppSettings,
      ),
      );
    }
    if (_totalContactsOnDevice == 0) {
      return _fontScoped(
        _EmptyState(
        icon: Icons.person_outline,
        title: l10n.noContactsFound,
        subtitle: l10n.contactsEmptySubtitle,
      ),
      );
    }

    return _fontScoped(
      Column(
      children: [
        // ─ Search bar ─
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 4),
          child: TextField(
            controller: _searchController,
            style: context.dialerTextStyle(
              DialerFontRole.primary,
              TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 15,
              ),
            ),
            decoration: InputDecoration(
              hintText: l10n.searchContacts,
              hintStyle: context.dialerTextStyle(
                DialerFontRole.secondary,
                TextStyle(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
              prefixIcon: Icon(
                Icons.search,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                size: 20,
              ),
              suffixIcon: _searching
                  ? IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        size: 18,
                      ),
                      onPressed: () {
                        _searchController.clear();
                        main_app.contactsSearchActiveNotifier.value = false;
                        setState(() => _searching = false);
                        _scheduleResetScrollToTop();
                      },
                    )
                  : IconButton(
                      icon: Icon(
                        Icons.mic_none,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        size: 20,
                      ),
                      tooltip: l10n.voiceSearch,
                      onPressed: () async {
                        final spoken = await VoiceSearch.listenWithFeedback(
                          context,
                        );
                        if (spoken == null || !mounted) return;
                        _searchController.text = spoken;
                        _searchController.selection =
                            TextSelection.fromPosition(
                              TextPosition(offset: spoken.length),
                            );
                        setState(() => _searching = true);
                      },
                    ),
              filled: false,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
            ),
            onChanged: (_) {
              final active = _searchController.text.isNotEmpty;
              main_app.contactsSearchActiveNotifier.value = active;
              setState(() => _searching = active);
            },
          ),
        ),
        // ─ Contact count ─
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '$_visibleContactCount contacts',
              style: context.dialerTextStyle(
                DialerFontRole.secondary,
                TextStyle(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  fontSize: 11,
                ),
              ),
            ),
          ),
        ),
        // ─ List ─
        Expanded(
          child: RefreshIndicator(
            color: Theme.of(context).colorScheme.onSurface,
            backgroundColor: Theme.of(context).colorScheme.surfaceContainerHigh,
            onRefresh: () => _loadContacts(forceRefresh: true),
            child: ListView.builder(
              controller: _listScrollController,
              padding: const EdgeInsets.only(top: 8, bottom: 120),
              itemCount: _flatItems.length,
              itemBuilder: (context, idx) {
                final item = _flatItems[idx];
                if (item == 'create_new') {
                  return ListTile(
                    leading: Icon(
                      Icons.person_add_outlined,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                      size: 24,
                    ),
                    title: Text(
                      l10n.createNewContact,
                      style: context.dialerTextStyle(
                        DialerFontRole.primary,
                        TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    onTap: _addContact,
                  );
                } else if (item is String) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 6),
                    child: Text(
                      item,
                      style: context.dialerTextStyle(
                        DialerFontRole.sectionHeader,
                        TextStyle(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          fontSize: 12,
                          letterSpacing: 0.8,
                        ),
                      ),
                    ),
                  );
                } else if (item is Contact) {
                  return _ContactTile(
                    contact: item,
                    onTap: () => _showContactDetail(item),
                    onCall: item.phones.isNotEmpty
                        ? () => _call(item.phones.first.number)
                        : null,
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
      ],
    ),
    );
  }
}

class _ContactTile extends StatelessWidget {
  final Contact contact;
  final VoidCallback onTap;
  final VoidCallback? onCall;

  const _ContactTile({required this.contact, required this.onTap, this.onCall});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            _LazyAvatar(contact: contact, size: 44),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    contact.displayName,
                    style: context.dialerTextStyle(
                      DialerFontRole.primary,
                      TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  if (contact.phones.isNotEmpty)
                    Text(
                      contact.phones.first.number,
                      style: context.dialerTextStyle(
                        DialerFontRole.secondary,
                        TextStyle(
                          color: Theme.of(context).colorScheme.outline,
                          fontSize: 12,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            if (onCall != null)
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: onCall,
                icon: Icon(
                  contact.phones.length > 1 ? Icons.call : Icons.call_outlined,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  size: 20,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _LazyAvatar extends StatefulWidget {
  final Contact contact;
  final double size;

  const _LazyAvatar({required this.contact, required this.size});

  @override
  State<_LazyAvatar> createState() => _LazyAvatarState();
}

class _LazyAvatarState extends State<_LazyAvatar> {
  Uint8List? _thumbBytes;

  @override
  void initState() {
    super.initState();
    if (widget.contact.thumbnail == null && widget.contact.id.isNotEmpty) {
      unawaited(_loadThumbnail());
    }
  }

  @override
  void didUpdateWidget(covariant _LazyAvatar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.contact.id != widget.contact.id) {
      _thumbBytes = null;
      if (widget.contact.thumbnail == null && widget.contact.id.isNotEmpty) {
        unawaited(_loadThumbnail());
      }
    }
  }

  Future<void> _loadThumbnail() async {
    try {
      final c = await FlutterContacts.getContact(
        widget.contact.id,
        withThumbnail: true,
      );
      if (!mounted || c?.thumbnail == null) return;
      setState(() => _thumbBytes = c!.thumbnail);
    } catch (_) {}
  }

  String _initials(String name) {
    final parts = name.trim().split(' ');
    if (parts.isEmpty || parts.first.isEmpty) return '?';
    if (parts.length == 1) return parts[0][0].toUpperCase();
    return '${parts[0][0]}${parts.last[0]}'.toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    final outlineColor = Theme.of(context).colorScheme.outlineVariant;
    final circleShape = CircleBorder(
      side: BorderSide(color: outlineColor, width: 1.5),
    );
    final bytes = _thumbBytes ?? widget.contact.thumbnail;
    if (bytes != null) {
      return Material(
        color: Colors.transparent,
        shape: circleShape,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          width: widget.size,
          height: widget.size,
          child: CircleAvatar(
            radius: widget.size / 2,
            backgroundImage: MemoryImage(bytes),
            backgroundColor: Colors.transparent,
          ),
        ),
      );
    }
    final initials = _initials(widget.contact.displayName);
    return Material(
      color: Colors.transparent,
      shape: circleShape,
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        width: widget.size,
        height: widget.size,
        child: Center(
          child: Text(
            initials,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
              fontSize: widget.size * 0.38,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}

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
            style: context.dialerTextStyle(
              DialerFontRole.primary,
              TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            subtitle,
            style: context.dialerTextStyle(
              DialerFontRole.secondary,
              TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontSize: 13,
              ),
            ),
            textAlign: TextAlign.center,
          ),
          if (buttonLabel != null) ...[
            SizedBox(height: 20),
            TextButton(
              onPressed: onButton,
              child: Text(
                buttonLabel!,
                style: context.dialerTextStyle(
                  DialerFontRole.button,
                  TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
