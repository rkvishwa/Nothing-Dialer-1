import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:call_log/call_log.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import '../services/blocking_manager.dart';
import 'sim_picker_sheet.dart';
import 'floating_dialpad.dart';
import 'call_history_screen.dart';
import 'contact_detail_screen.dart';

// ─── Grouped call model ──────────────────────────────────────────────────────

/// Represents consecutive calls to/from the same number with the same type.
class _GroupedCall {
  final String name;
  final String number;
  final CallType? callType;
  final int count;
  final int? timestamp;   // most recent
  final int? duration;    // most recent
  final String? simDisplayName;
  final String relativeTime;
  final List<String> entryRelativeTimes;
  final List<CallLogEntry> entries;

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
  });
}

// ─── Screen ──────────────────────────────────────────────────────────────────

/// Displays the device's call log grouped by date, with consecutive
/// same-number/same-type calls merged (like Google Phone).
class RecentsScreen extends StatefulWidget {
  const RecentsScreen({super.key});

  @override
  State<RecentsScreen> createState() => _RecentsScreenState();
}

class _RecentsScreenState extends State<RecentsScreen> {
  List<CallLogEntry> _entries = [];
  Map<String, List<_GroupedCall>> _mapFiltered = {};
  List<Object> _flatItems = []; // Contains Strings (headers) and _GroupedCall
  List<String> _sections = [];
  bool _loading = true;
  bool _permissionDenied = false;
  String _searchQuery = '';
  final _searchController = TextEditingController();

  static const _channel = MethodChannel('nothing_dialer/control');

  @override
  void initState() {
    super.initState();
    _loadCallLog();
    BlockingManager.blockedNumbersNotifier.addListener(_onBlockedNumbersChanged);
  }

  void _onBlockedNumbersChanged() {
    debugPrint('RecentsScreen: Blocked numbers updated, refreshing filters');
    if (mounted) {
      setState(() {
        _updateFilters();
      });
    }
  }

  @override
  void dispose() {
    BlockingManager.blockedNumbersNotifier.removeListener(_onBlockedNumbersChanged);
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _loadCallLog() async {
    setState(() => _loading = true);

    final status = await Permission.phone.request();
    if (!status.isGranted) {
      setState(() { _loading = false; _permissionDenied = true; });
      return;
    }

    try {
      final entries = await CallLog.get();
      await BlockingManager.refreshBlockedNumbers();

      if (mounted) {
        setState(() {
          _entries = entries.toList();
          _updateFilters();
          _loading = false;
        });
      }
    } catch (_) {
      if (mounted) setState(() => _loading = false);
    }
  }

  void _updateFilters() {
    final filteredEntries = _searchQuery.isEmpty
        ? _entries
        : _entries.where((e) {
            final q = _searchQuery.toLowerCase();
            return (e.name ?? '').toLowerCase().contains(q) ||
                (e.number ?? '').contains(q);
          }).toList();

    final groupedFiltered = _groupEntries(filteredEntries);
    final mapFiltered = <String, List<_GroupedCall>>{};
    final now = DateTime.now();
    final todayStr = DateFormat('yyyy-MM-dd').format(now);
    final yesterdayStr = DateFormat('yyyy-MM-dd').format(now.subtract(const Duration(days: 1)));
    for (final g in groupedFiltered) {
      final date = DateFormat('yyyy-MM-dd')
          .format(DateTime.fromMillisecondsSinceEpoch(g.timestamp ?? 0));
      String label;
      if (date == todayStr) {
        label = 'Today';
      } else if (date == yesterdayStr) {
        label = 'Yesterday';
      } else {
        label = DateFormat('MMMM d').format(DateTime.fromMillisecondsSinceEpoch(g.timestamp ?? 0));
      }
      mapFiltered.putIfAbsent(label, () => []).add(g);
    }
    
    _mapFiltered = mapFiltered;
    _sections = _mapFiltered.keys.toList();

    _flatItems = [];
    for (final section in _sections) {
      _flatItems.add(section);
      _flatItems.addAll(_mapFiltered[section]!);
    }
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
          SnackBar(content: Text('Call error: ${e.message}'), backgroundColor: const Color(0xFF333333)),
        );
      }
    }
  }

  void _showOptions(BuildContext tileContext, _GroupedCall group, Offset globalPosition) {
    showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(
        globalPosition.dx,
        globalPosition.dy,
        globalPosition.dx,
        globalPosition.dy,
      ),
      color: const Color(0xFF2B2930),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 8,
      items: [
        PopupMenuItem(
          enabled: false,
          child: Text(
            group.number,
            style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
        PopupMenuItem(
          value: 'copy',
          child: Row(children: const [Icon(Icons.copy_rounded, color: Colors.white, size: 20), SizedBox(width: 12), Text('Copy number', style: TextStyle(color: Colors.white, fontSize: 15))]),
        ),
        PopupMenuItem(
          value: 'edit_before_call',
          child: Row(children: const [Icon(Icons.edit_outlined, color: Colors.white, size: 20), SizedBox(width: 12), Text('Edit number before call', style: TextStyle(color: Colors.white, fontSize: 15))]),
        ),
        if (BlockingManager.isBlocked(group.number))
          PopupMenuItem(
            value: 'unblock',
            child: Row(children: const [Icon(Icons.check_circle_outline, color: Colors.white, size: 20), SizedBox(width: 12), Text('Unblock number', style: TextStyle(color: Colors.white, fontSize: 15))]),
          )
        else
          PopupMenuItem(
            value: 'block',
            child: Row(children: const [Icon(Icons.block, color: Colors.white, size: 20), SizedBox(width: 12), Text('Block or report', style: TextStyle(color: Colors.white, fontSize: 15))]),
          ),
        PopupMenuItem(
          value: 'delete',
          child: Row(children: const [Icon(Icons.delete_outline, color: Color(0xFFFF453A), size: 20), SizedBox(width: 12), Text('Delete', style: TextStyle(color: Color(0xFFFF453A), fontSize: 15))]),
        ),
      ],
    ).then((value) {
      if (!mounted) return;
      if (value == 'copy') {
        Clipboard.setData(ClipboardData(text: group.number));
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Number copied', style: TextStyle(color: Colors.white)), backgroundColor: Color(0xFF333333)));
      } else if (value == 'edit_before_call') {
        // Find the dialer shell and open dialpad with initial digits. 
        // We know DialerShell handles floating_dialpad state. The recents screen is nested inside DialerShell's PageView.
        // Easiest is to pop back to shell and broadcast a notification or use a global key, but DialerShell currently handles opening it via FAB.
        // We can just call showFloatingDialpad from floating_dialpad.dart directly here.
        importFloatingDialpad(group.number);
      } else if (value == 'block') {
         showDialog(
           context: context,
           builder: (context) => AlertDialog(
             backgroundColor: const Color(0xFF2B2930),
             title: const Text('Block number?', style: TextStyle(color: Colors.white)),
             content: Text('You will no longer receive calls or texts from ${group.number}.', style: const TextStyle(color: Color(0xFFCAC4D0))),
             actions: [
               TextButton(
                 onPressed: () => Navigator.pop(context),
                 child: const Text('Cancel', style: TextStyle(color: Color(0xFFD0BCFF))),
               ),
               TextButton(
                   onPressed: () async {
                     Navigator.pop(context);
                     try {
                       // Look for contact and block all numbers
                       final contacts = await FlutterContacts.getContacts(withProperties: true);
                       final target = _normalise(group.number);
                       Contact? matchedContact;
                       for (var c in contacts) {
                         if (c.phones.any((p) => _normalise(p.number) == target)) {
                           matchedContact = c;
                           break;
                         }
                       }

                       if (matchedContact != null) {
                         debugPrint('RecentsScreen: Blocking all numbers for contact ${matchedContact.displayName}');
                         for (var phone in matchedContact.phones) {
                           await BlockingManager.blockNumber(phone.number);
                         }
                       } else {
                         debugPrint('RecentsScreen: No contact match, blocking number ${group.number}');
                         await BlockingManager.blockNumber(group.number);
                       }

                       if (mounted) {
                         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Blocked'), backgroundColor: Color(0xFF333333)));
                         _loadCallLog(); 
                       }
                     } catch (e) {
                       if (mounted) {
                         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Could not block'), backgroundColor: Color(0xFF333333)));
                       }
                     }
                   },
                 child: const Text('Block', style: TextStyle(color: Color(0xFFFF453A))),
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
    if (group.name.isNotEmpty) {
      // Try to find the contact by number
      final contacts = await FlutterContacts.getContacts(withProperties: true, withPhoto: true);
      final normalizedTarget = _normalise(group.number);
      
      Contact? found;
      for (var c in contacts) {
        if (c.phones.any((p) => _normalise(p.number) == normalizedTarget)) {
          found = c;
          break;
        }
      }

      if (found != null && mounted) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => ContactDetailScreen(contact: found!)),
        );
      } else {
        // Fallback: create new contact if not found or name was just from call log
        await FlutterContacts.openExternalInsert(Contact(phones: [Phone(group.number)]));
      }
    } else {
      await FlutterContacts.openExternalInsert(Contact(phones: [Phone(group.number)]));
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
        debugPrint('RecentsScreen: Unblocking all numbers for contact ${matchedContact.displayName}');
        for (var phone in matchedContact.phones) {
          await BlockingManager.unblockNumber(phone.number);
        }
      } else {
        debugPrint('RecentsScreen: No contact match, unblocking number $number');
        await BlockingManager.unblockNumber(number);
      }

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Unblocked'), backgroundColor: Color(0xFF333333)));
        _loadCallLog(); // Refresh list
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Could not unblock'), backgroundColor: Color(0xFF333333)));
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

  // ── Group consecutive entries ───────────────────────────────────────────────

  /// Normalise a number string to just digits for comparison.
  String _normalise(String? number) =>
      (number ?? '').replaceAll(RegExp(r'[^\d+]'), '');

  List<_GroupedCall> _groupEntries(List<CallLogEntry> entries) {
    if (entries.isEmpty) return [];

    final groups = <_GroupedCall>[];
    String? prevNumber = _normalise(entries.first.number);
    CallType? prevType = entries.first.callType;
    int count = 1;
    CallLogEntry anchor = entries.first;
    List<CallLogEntry> currentEntries = [entries.first];

    for (int i = 1; i < entries.length; i++) {
      final e = entries[i];
      final num = _normalise(e.number);
      if (num == prevNumber && e.callType == prevType) {
        count++;
        currentEntries.add(e);
      } else {
        groups.add(_GroupedCall(
          name: anchor.name ?? '',
          number: anchor.number ?? '',
          callType: prevType,
          count: count,
          timestamp: anchor.timestamp,
          duration: anchor.duration,
          simDisplayName: anchor.simDisplayName,
          relativeTime: _formatRelativeTime(anchor.timestamp),
          entryRelativeTimes: currentEntries.map((e) => _subtextRelativeTime(e.timestamp)).toList(),
          entries: List.from(currentEntries),
        ));
        anchor = e;
        prevNumber = num;
        prevType = e.callType;
        count = 1;
        currentEntries = [e];
      }
    }
    // last group
    groups.add(_GroupedCall(
      name: anchor.name ?? '',
      number: anchor.number ?? '',
      callType: prevType,
      count: count,
      timestamp: anchor.timestamp,
      duration: anchor.duration,
      simDisplayName: anchor.simDisplayName,
      relativeTime: _formatRelativeTime(anchor.timestamp),
      entryRelativeTimes: currentEntries.map((e) => _subtextRelativeTime(e.timestamp)).toList(),
      entries: currentEntries,
    ));

    return groups;
  }

  // ── Date helpers ────────────────────────────────────────────────────────────

  String _subtextRelativeTime(int? ms) {
    if (ms == null) return '';
    final dt = DateTime.fromMillisecondsSinceEpoch(ms);
    final diff = DateTime.now().difference(dt);
    if (diff.inMinutes < 1) return 'Just now';
    if (diff.inMinutes < 60) return '${diff.inMinutes} min ago';
    if (diff.inHours < 24) return '${diff.inHours} hr ago';
    return DateFormat('MMM d').format(dt);
  }

  String _formatRelativeTime(int? ms) {
    if (ms == null) return '';
    final dt = DateTime.fromMillisecondsSinceEpoch(ms);
    final diff = DateTime.now().difference(dt);

    if (diff.inMinutes < 1) return 'Just now';
    if (diff.inMinutes < 60) return '${diff.inMinutes} min ago';
    if (diff.inHours < 24) return DateFormat('HH:mm').format(dt);
    if (diff.inDays == 1) return 'Yesterday';
    return DateFormat('MMM d, yyyy').format(dt);
  }

  Color _callTypeColor(CallType? type) {
    switch (type) {
      case CallType.missed:
      case CallType.rejected:
        return const Color(0xFFFF453A); // red
      case CallType.incoming:
        return const Color(0xFF30D158); // green
      default:
        return const Color(0xFFCAC4D0); // neutral
    }
  }

  IconData _callTypeIcon(CallType? type) {
    switch (type) {
      case CallType.missed:    return Icons.call_missed;
      case CallType.rejected:  return Icons.call_missed_outgoing;
      case CallType.incoming:  return Icons.call_received;
      default:                 return Icons.call_made;
    }
  }

  // ── Build ───────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Center(child: CircularProgressIndicator(color: Colors.white, strokeWidth: 1.5));
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

    if (_entries.isEmpty) {
      return const _EmptyState(icon: Icons.history, title: 'No recent calls', subtitle: 'Your call history will appear here.');
    }

    return Column(
      children: [
        // Search bar
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
          child: TextField(
            controller: _searchController,
            onChanged: (v) {
              setState(() {
                _searchQuery = v;
                _updateFilters();
              });
            },
            style: const TextStyle(color: Colors.white, fontSize: 16),
            decoration: InputDecoration(
              hintText: 'Search recent calls',
              hintStyle: const TextStyle(color: Color(0xFF938F99), fontSize: 16),
              prefixIcon: const Icon(Icons.search, color: Color(0xFF938F99)),
              suffixIcon: _searchQuery.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.close, color: Color(0xFF938F99), size: 20),
                      onPressed: () {
                        setState(() {
                            _searchController.clear();
                            _searchQuery = '';
                            _updateFilters();
                        });
                      },
                    )
                  : null,
              filled: true,
              fillColor: const Color(0xFF2B2930),
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
            color: Colors.white,
            backgroundColor: const Color(0xFF1C1B1F),
            onRefresh: _loadCallLog,
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 8, bottom: 24),
              itemCount: _flatItems.length,
              itemBuilder: (context, idx) {
                final item = _flatItems[idx];
                if (item is String) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
                    child: Text(item,
                        style: const TextStyle(
                            color: Color(0xFF938F99),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.6)),
                  );
                } else if (item is _GroupedCall) {
                  return _CallTile(
                    group: item,
                    isBlocked: BlockingManager.isBlocked(item.number),
                    typeColor: _callTypeColor(item.callType),
                    typeIcon: _callTypeIcon(item.callType),
                    onCallTap: () => _call(item.number),
                    onLongPress: (BuildContext tapContext, Offset globalPosition) =>
                        _showOptions(tapContext, item, globalPosition),
                    onContactActionTap: () => _handleContactAction(item),
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
              SnackBar(content: Text('Call error: ${e.message}'), backgroundColor: const Color(0xFF333333)),
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
  final void Function(BuildContext, Offset) onLongPress;
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

class _CallTileState extends State<_CallTile> with SingleTickerProviderStateMixin {
  bool _expanded = false;
  bool _isPressed = false;
  late AnimationController _animController;
  late Animation<double> _expandAnimation;

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(vsync: this, duration: const Duration(milliseconds: 250));
    _expandAnimation = CurvedAnimation(parent: _animController, curve: Curves.easeInOut);
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  void _toggleExpand() {
    setState(() {
      _expanded = !_expanded;
      if (_expanded) {
        _animController.forward();
      } else {
        _animController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final group = widget.group;
    final displayName = group.name.isNotEmpty ? group.name : group.number;
    final isMissed = group.callType == CallType.missed || group.callType == CallType.rejected;

    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) => setState(() => _isPressed = false),
      onTapCancel: () => setState(() => _isPressed = false),
      onTap: _toggleExpand,
      onLongPressDown: (details) {
        FocusScope.of(context).unfocus();
        setState(() => _isPressed = true);
      },
      onLongPressEnd: (_) => setState(() => _isPressed = false),
      onLongPressCancel: () => setState(() => _isPressed = false),
      onLongPressStart: (details) {
        setState(() => _isPressed = false);
        widget.onLongPress(context, details.globalPosition);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: _isPressed ? Colors.white.withOpacity(0.08) : Colors.transparent,
        child: Column(

        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                // Avatar
                Container(
                  width: 48,
                  height: 48,
                  decoration: const BoxDecoration(
                    color: Color(0xFF2B2930),
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: widget.isBlocked
                      ? const Icon(Icons.block, color: Color(0xFFFF453A), size: 24)
                      : Text(
                          displayName.isNotEmpty ? displayName[0].toUpperCase() : '?',
                          style: const TextStyle(color: Color(0xFFD0BCFF), fontSize: 20, fontWeight: FontWeight.w400),
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
                                color: isMissed ? const Color(0xFFFF453A) : Colors.white,
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
                                color: isMissed ? const Color(0xFFFF453A) : const Color(0xFF938F99),
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
                          Icon(widget.typeIcon, size: 14, color: widget.typeColor),
                          const SizedBox(width: 6),
                          Flexible(
                            child: Text(
                              group.name.isNotEmpty ? group.number : _callTypeName(group.callType),
                              style: const TextStyle(color: Color(0xFF938F99), fontSize: 13),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            '• ${group.relativeTime}',
                            style: const TextStyle(color: Color(0xFF938F99), fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // SIM icon
              if (group.simDisplayName != null && group.simDisplayName!.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(right: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomPaint(
                        painter: _SimCardPainter(color: const Color(0xFF938F99)),
                        child: SizedBox(
                          width: 16,
                          height: 20,
                          child: Center(
                            child: Text(
                              group.simDisplayName![0].toUpperCase(),
                              style: const TextStyle(color: Color(0xFFCAC4D0), fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      if (_expanded) ...[
                        const SizedBox(height: 2),
                        Text(
                          group.simDisplayName!,
                          style: const TextStyle(color: Color(0xFF938F99), fontSize: 10),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ]
                    ],
                  ),
                ),
              IconButton(
                onPressed: widget.onCallTap,
                icon: const Icon(Icons.call_outlined, color: Color(0xFFCAC4D0)),
                iconSize: 22,
                padding: const EdgeInsets.all(12),
                constraints: const BoxConstraints(),
              ),
              ],
            ),
          ),
          
          // Expanded content
          SizeTransition(
            sizeFactor: _expandAnimation,
            child: Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF2B2930),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (group.entries.length > 1) ...[
                    // Just show all the individual logs
                    for (int i = 0; i < group.entries.length; i++)
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          group.entryRelativeTimes[i],
                          style: const TextStyle(color: Color(0xFF938F99), fontSize: 13),
                        ),
                      ),
                  ],
                  if (group.entries.length <= 1) ...[
                    // Still show the single time if user expands a group of 1 to see individual time detail
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        group.entryRelativeTimes[0],
                        style: const TextStyle(color: Color(0xFF938F99), fontSize: 13),
                      ),
                    ),
                  ],
                  const SizedBox(height: 12),
                  
                  // Action Buttons (Video call, Message, History)
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E1C22),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        _ActionItem(
                          icon: Icons.videocam_outlined,
                          label: 'Video call',
                          onTap: () async {
                            const channel = MethodChannel('nothing_dialer/control');
                            try {
                              await channel.invokeMethod('placeVideoCall', {'number': group.number});
                            } catch (e) {
                              if (mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Could not place video call'), backgroundColor: Color(0xFF333333)));
                              }
                            }
                          },
                        ),
                        const Divider(height: 1, color: Color(0xFF2B2930)),
                        _ActionItem(
                          icon: Icons.chat_bubble_outline,
                          label: 'Message',
                          onTap: () async {
                            const channel = MethodChannel('nothing_dialer/control');
                            try {
                              await channel.invokeMethod('openSmsApp', {'number': group.number});
                            } catch (e) {
                              if (mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Could not open messaging app'), backgroundColor: Color(0xFF333333)));
                              }
                            }
                          },
                        ),
                        const Divider(height: 1, color: Color(0xFF2B2930)),
                        _ActionItem(
                          icon: Icons.history,
                          label: 'History',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => CallHistoryScreen(
                                  number: group.number,
                                  contactName: group.name.isNotEmpty ? group.name : null,
                                ),
                              ),
                            );
                          },
                        ),
                        const Divider(height: 1, color: Color(0xFF2B2930)),
                        _ActionItem(
                          icon: group.name.isNotEmpty ? Icons.person_outline : Icons.person_add_outlined,
                          label: group.name.isNotEmpty ? 'View contact' : 'Add to contact',
                          onTap: widget.onContactActionTap,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

  String _callTypeName(CallType? type) {
    switch (type) {
      case CallType.missed:    return 'Missed';
      case CallType.rejected:  return 'Rejected';
      case CallType.incoming:  return 'Incoming';
      case CallType.outgoing:  return 'Outgoing';
      default:                 return '';
    }
  }
}

class _ActionItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _ActionItem({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.white, size: 20),
            const SizedBox(width: 16),
            Text(label, style: const TextStyle(color: Colors.white, fontSize: 15)),
          ],
        ),
      ),
    );
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
          Icon(icon, size: 48, color: const Color(0xFF49454F)),
          const SizedBox(height: 16),
          Text(title, style: const TextStyle(color: Color(0xFFCAC4D0), fontSize: 16)),
          const SizedBox(height: 6),
          Text(subtitle, style: const TextStyle(color: Color(0xFF938F99), fontSize: 13), textAlign: TextAlign.center),
          if (buttonLabel != null) ...[
            const SizedBox(height: 20),
            TextButton(
              onPressed: onButton,
              child: Text(buttonLabel!, style: const TextStyle(color: Color(0xFFD0BCFF))),
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
    path.quadraticBezierTo(size.width, size.height, size.width - r, size.height);
    path.lineTo(r, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - r);
    path.lineTo(0, cutSize);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _SimCardPainter oldDelegate) => oldDelegate.color != color;
}
