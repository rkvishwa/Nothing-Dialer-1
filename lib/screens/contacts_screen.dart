import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:permission_handler/permission_handler.dart';
import 'sim_picker_sheet.dart';
import 'contact_detail_screen.dart';

/// Displays phone contacts synced from the device address book.
class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  List<Contact> _contacts = [];
  List<Contact> _filtered = [];
  Map<String, List<Contact>> _groupedContacts = {};
  List<Object> _flatItems = []; // Contains Strings (headers) and Contacts
  List<String> _sections = [];
  bool _loading = true;
  bool _permissionDenied = false;
  final _searchController = TextEditingController();
  bool _searching = false;

  static const _channel = MethodChannel('nothing_dialer/control');

  @override
  void initState() {
    super.initState();
    _loadContacts();
    _searchController.addListener(_onSearch);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _loadContacts() async {
    setState(() => _loading = true);
    final status = await Permission.contacts.request();
    if (!status.isGranted) {
      setState(() { _loading = false; _permissionDenied = true; });
      return;
    }
    final contacts = await FlutterContacts.getContacts(
      withProperties: true,
      withPhoto: true,
    );
    if (mounted) {
      setState(() {
        _contacts = contacts..sort((a, b) =>
            a.displayName.toLowerCase().compareTo(b.displayName.toLowerCase()));
        _filtered = _contacts;
        _updateGroups();
        _loading = false;
      });
    }
  }

  void _updateGroups() {
    final map = <String, List<Contact>>{};
    for (final c in _filtered) {
      final key = c.displayName.isNotEmpty
          ? c.displayName[0].toUpperCase()
          : '#';
      final sectionKey = RegExp(r'[A-Z]').hasMatch(key) ? key : '#';
      map.putIfAbsent(sectionKey, () => []).add(c);
    }
    _groupedContacts = Map.fromEntries(
      map.entries.toList()..sort((a, b) {
        if (a.key == '#') return 1;
        if (b.key == '#') return -1;
        return a.key.compareTo(b.key);
      }),
    );
    _sections = _groupedContacts.keys.toList();

    _flatItems = ['create_new'];
    for (final section in _sections) {
      _flatItems.add(section);
      _flatItems.addAll(_groupedContacts[section]!);
    }
  }

  void _onSearch() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      if (query.isEmpty) {
        _filtered = _contacts;
      } else {
        _filtered = _contacts.where((c) {
          final name = c.displayName.toLowerCase();
          final phones = c.phones.map((p) => p.number).join(' ');
          return name.contains(query) || phones.contains(query);
        }).toList();
      }
      _updateGroups();
    });
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
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Call error: ${e.message}'), backgroundColor: const Color(0xFF333333)),
        );
      }
    }
  }

  Future<void> _addContact() async {
    await FlutterContacts.openExternalInsert();
    _loadContacts();
  }

  void _showContactDetail(Contact contact) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ContactDetailScreen(contact: contact),
      ),
    );
    if (result == true) {
      _loadContacts();
    }
  }

  // ── Alphabet sectioned list ─────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Center(child: CircularProgressIndicator(color: Colors.white, strokeWidth: 1.5));
    }
    if (_permissionDenied) {
      return _EmptyState(
        icon: Icons.contacts,
        title: 'Permission needed',
        subtitle: 'Grant contacts permission to see your address book.',
        buttonLabel: 'Open Settings',
        onButton: openAppSettings,
      );
    }
    if (_contacts.isEmpty) {
      return const _EmptyState(
        icon: Icons.person_outline,
        title: 'No contacts found',
        subtitle: 'Contacts from your device will appear here.',
      );
    }

    return Column(
      children: [
        // ─ Search bar ─
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
          child: TextField(
            controller: _searchController,
            style: const TextStyle(color: Colors.white, fontSize: 15),
            decoration: InputDecoration(
              hintText: 'Search contacts…',
              hintStyle: const TextStyle(color: Color(0xFF555555)),
              prefixIcon: const Icon(Icons.search, color: Color(0xFF555555), size: 20),
              suffixIcon: _searching
                  ? IconButton(
                      icon: const Icon(Icons.close, color: Color(0xFF555555), size: 18),
                      onPressed: () {
                        _searchController.clear();
                        setState(() => _searching = false);
                      })
                  : null,
              filled: true,
              fillColor: const Color(0xFF1A1A1A),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            ),
            onChanged: (_) => setState(() => _searching = _searchController.text.isNotEmpty),
          ),
        ),
        // ─ Contact count ─
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('${_filtered.length} contacts',
                style: const TextStyle(color: Color(0xFF444444), fontSize: 11)),
          ),
        ),
        // ─ List ─
        Expanded(
          child: RefreshIndicator(
            color: Colors.white,
            backgroundColor: const Color(0xFF1A1A1A),
            onRefresh: _loadContacts,
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 8, bottom: 24),
              itemCount: _flatItems.length,
              itemBuilder: (context, idx) {
                final item = _flatItems[idx];
                if (item == 'create_new') {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Color(0xFF1A1A1A),
                      child: Icon(Icons.person_add_outlined,
                          color: Colors.white, size: 20),
                    ),
                    title: const Text('Create new contact',
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    onTap: _addContact,
                  );
                } else if (item is String) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 6),
                    child: Text(item,
                        style: const TextStyle(
                            color: Color(0xFF555555),
                            fontSize: 12,
                            letterSpacing: 0.8)),
                  );
                } else if (item is Contact) {
                  return _ContactTile(
                    contact: item,
                    onTap: () => _showContactDetail(item),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _ContactHeader extends StatelessWidget {
  final Contact contact;
  const _ContactHeader({required this.contact});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16),
        _Avatar(contact: contact, size: 44),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            contact.displayName,
            style: const TextStyle(color: Colors.white, fontSize: 16),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

class _ContactTile extends StatelessWidget {
  final Contact contact;
  final VoidCallback onTap;
  const _ContactTile({required this.contact, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            _Avatar(contact: contact, size: 44),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(contact.displayName,
                      style: const TextStyle(color: Colors.white, fontSize: 15)),
                  if (contact.phones.isNotEmpty)
                    Text(
                      contact.phones.first.number,
                      style: const TextStyle(color: Color(0xFF666666), fontSize: 12),
                    ),
                ],
              ),
            ),
            Icon(
              contact.phones.length > 1 ? Icons.call : Icons.call_outlined,
              color: const Color(0xFF444444),
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  final Contact contact;
  final double size;
  const _Avatar({required this.contact, required this.size});

  @override
  Widget build(BuildContext context) {
    if (contact.photo != null) {
      return CircleAvatar(
        radius: size / 2,
        backgroundImage: MemoryImage(contact.photo!),
        backgroundColor: const Color(0xFF1A1A1A),
      );
    }
    final initials = _initials(contact.displayName);
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFF2A2A2A)),
      ),
      alignment: Alignment.center,
      child: Text(initials,
          style: TextStyle(color: Colors.white, fontSize: size * 0.38, fontWeight: FontWeight.w300)),
    );
  }

  String _initials(String name) {
    final parts = name.trim().split(' ');
    if (parts.isEmpty || parts.first.isEmpty) return '?';
    if (parts.length == 1) return parts[0][0].toUpperCase();
    return '${parts[0][0]}${parts.last[0]}'.toUpperCase();
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
          Icon(icon, size: 48, color: const Color(0xFF333333)),
          const SizedBox(height: 16),
          Text(title, style: const TextStyle(color: Color(0xFF888888), fontSize: 16)),
          const SizedBox(height: 6),
          Text(subtitle,
              style: const TextStyle(color: Color(0xFF444444), fontSize: 13),
              textAlign: TextAlign.center),
          if (buttonLabel != null) ...[
            const SizedBox(height: 20),
            TextButton(
              onPressed: onButton,
              child: Text(buttonLabel!, style: const TextStyle(color: Colors.white)),
            ),
          ],
        ],
      ),
    );
  }
}
