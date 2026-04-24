import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:permission_handler/permission_handler.dart';

import '../services/blocking_manager.dart';

class BlockedNumbersScreen extends StatefulWidget {
  const BlockedNumbersScreen({super.key});

  @override
  State<BlockedNumbersScreen> createState() => _BlockedNumbersScreenState();
}

class _BlockedNumbersScreenState extends State<BlockedNumbersScreen> {
  bool _isLoading = true;
  bool _contactsPermissionDenied = false;
  final Set<String> _pendingUnblock = <String>{};

  Map<String, String?> _contactNameByBlocked = <String, String?>{};
  Map<String, String> _exactContactIndex = <String, String>{};
  Map<String, String> _suffixContactIndex = <String, String>{};

  @override
  void initState() {
    super.initState();
    BlockingManager.blockedNumbersNotifier.addListener(
      _onBlockedNumbersChanged,
    );
    _refreshData();
  }

  @override
  void dispose() {
    BlockingManager.blockedNumbersNotifier.removeListener(
      _onBlockedNumbersChanged,
    );
    super.dispose();
  }

  void _onBlockedNumbersChanged() {
    _syncContactNamesWithBlockedNumbers();
  }

  Future<void> _refreshData() async {
    if (mounted) {
      setState(() {
        _isLoading = true;
      });
    }

    try {
      await BlockingManager.refreshBlockedNumbers();
      await _loadContactIndex();
      _syncContactNamesWithBlockedNumbers(notify: false);
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _loadContactIndex() async {
    final status = await Permission.contacts.request();
    if (!status.isGranted) {
      _exactContactIndex = <String, String>{};
      _suffixContactIndex = <String, String>{};
      _contactsPermissionDenied = true;
      return;
    }

    final contacts = await FlutterContacts.getContacts(withProperties: true);
    final exact = <String, String>{};
    final suffix = <String, String>{};

    for (final contact in contacts) {
      final name = contact.displayName.trim();
      if (name.isEmpty) continue;

      for (final phone in contact.phones) {
        final normalized = BlockingManager.normalize(phone.number);
        if (normalized.isEmpty) continue;

        exact.putIfAbsent(normalized, () => name);
        if (normalized.length >= 9) {
          suffix.putIfAbsent(
            normalized.substring(normalized.length - 9),
            () => name,
          );
        }
      }
    }

    _exactContactIndex = exact;
    _suffixContactIndex = suffix;
    _contactsPermissionDenied = false;
  }

  void _syncContactNamesWithBlockedNumbers({bool notify = true}) {
    final blockedNumbers = BlockingManager.blockedNumbersNotifier.value;
    final resolved = <String, String?>{};

    for (final blocked in blockedNumbers) {
      final normalized = BlockingManager.normalize(blocked);
      String? name;

      if (normalized.isNotEmpty) {
        name = _exactContactIndex[normalized];
        if (name == null && normalized.length >= 9) {
          name =
              _suffixContactIndex[normalized.substring(normalized.length - 9)];
        }
      }

      resolved[blocked] = name;
    }

    if (!notify || !mounted) {
      _contactNameByBlocked = resolved;
      return;
    }

    setState(() {
      _contactNameByBlocked = resolved;
      if (_isLoading) _isLoading = false;
    });
  }

  Future<void> _unblockNumber(String number) async {
    if (_pendingUnblock.contains(number)) return;

    setState(() {
      _pendingUnblock.add(number);
    });

    try {
      await BlockingManager.unblockNumber(number);
      if (!mounted) return;

      final matchedName = _contactNameByBlocked[number];
      final display = (matchedName != null && matchedName.isNotEmpty)
          ? '$matchedName ($number)'
          : number;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Unblocked $display'),
          backgroundColor: Theme.of(context).colorScheme.primary,
          behavior: SnackBarBehavior.floating,
        ),
      );
    } catch (_) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Could not unblock number'),
          backgroundColor: Theme.of(context).colorScheme.error,
          behavior: SnackBarBehavior.floating,
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          _pendingUnblock.remove(number);
        });
      }
    }
  }

  Future<void> _addNumber() async {
    final controller = TextEditingController();
    final result = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.surfaceContainerHigh,
        title: const Text('Block number'),
        content: TextField(
          controller: controller,
          keyboardType: TextInputType.phone,
          autofocus: true,
          decoration: const InputDecoration(
            hintText: 'Enter phone number',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, controller.text),
            child: const Text('Block'),
          ),
        ],
      ),
    );

    if (result != null && result.trim().isNotEmpty) {
      await BlockingManager.blockNumber(result.trim());
      _refreshData();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final blockedNumbers = BlockingManager.blockedNumbersNotifier.value;
    final contactMatchCount = _contactNameByBlocked.values
        .where((name) => name?.trim().isNotEmpty ?? false)
        .length;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        foregroundColor: theme.colorScheme.onSurface,
        title: const Text('Blocked numbers'),
        elevation: 0,
      ),
      body: RefreshIndicator(
        onRefresh: _refreshData,
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Text(
                '${blockedNumbers.length} blocked • $contactMatchCount matched',
                style: TextStyle(
                  color: theme.colorScheme.onSurfaceVariant,
                  fontSize: 14,
                ),
              ),
            ),
            if (_contactsPermissionDenied)
              _PermissionHint(onTap: openAppSettings),
            if (_isLoading && blockedNumbers.isEmpty)
              const Padding(
                padding: EdgeInsets.only(top: 80),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            else if (blockedNumbers.isEmpty)
              const _EmptyState()
            else
              ...blockedNumbers.map((number) {
                final name = _contactNameByBlocked[number];
                final isPending = _pendingUnblock.contains(number);

                return _BlockedItem(
                  number: number,
                  name: name,
                  isPending: isPending,
                  onUnblock: () => _unblockNumber(number),
                );
              }),
            const SizedBox(height: 100),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNumber,
        backgroundColor: theme.colorScheme.primaryContainer,
        foregroundColor: theme.colorScheme.onPrimaryContainer,
        elevation: 0,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _BlockedItem extends StatelessWidget {
  final String number;
  final String? name;
  final bool isPending;
  final VoidCallback onUnblock;

  const _BlockedItem({
    required this.number,
    required this.name,
    required this.isPending,
    required this.onUnblock,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final hasName = name != null && name!.trim().isNotEmpty;
    final displayName = hasName ? name!.trim() : number;
    final displaySubtitle = hasName ? number : 'Unknown contact';

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: null,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            children: [
              Icon(
                Icons.block_rounded,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                size: 24,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      displayName,
                      style: TextStyle(
                        color: theme.colorScheme.onSurface,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      displaySubtitle,
                      style: TextStyle(
                        color: theme.colorScheme.onSurfaceVariant,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              if (isPending)
                const SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              else
                IconButton(
                  icon: Icon(
                    Icons.close_rounded,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    size: 22,
                  ),
                  onPressed: onUnblock,
                  tooltip: 'Unblock',
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PermissionHint extends StatelessWidget {
  final VoidCallback onTap;

  const _PermissionHint({required this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: theme.colorScheme.errorContainer.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Icon(Icons.info_outline, color: theme.colorScheme.error, size: 20),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  'Contacts permission missing. Tap to fix.',
                  style: TextStyle(
                    color: theme.colorScheme.error,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Column(
        children: [
          Icon(
            Icons.block_rounded,
            size: 48,
            color: Theme.of(
              context,
            ).colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
          ),
          const SizedBox(height: 16),
          Text(
            'No blocked numbers',
            style: TextStyle(
              color: theme.colorScheme.onSurfaceVariant,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
