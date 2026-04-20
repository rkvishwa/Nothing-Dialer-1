import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:call_log/call_log.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import '../services/blocking_manager.dart';
import '../services/favourites_manager.dart';
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
  Map<String, List<_GroupedCall>> _mapFiltered = {};
  List<Object> _flatItems = []; // Contains Strings (headers) and _GroupedCall
  List<String> _sections = [];
  bool _loading = true;
  bool _permissionDenied = false;
  String _searchQuery = '';
  final _searchController = TextEditingController();
  final ScrollController _listScrollController = ScrollController();

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
    if (mounted) setState(_updateFilters);
  }

  void _onFrequentSettingsChanged() {
    if (mounted) setState(_updateFilters);
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
      Future.delayed(const Duration(milliseconds: 500), () {
        if (mounted) _loadCallLog();
      });
    }
  }

  void _handleRecentsRefreshTick() {
    if (mounted) _loadCallLog();
  }

  void _handleExternalClearSearch() {
    if (!mounted || _searchQuery.isEmpty) return;
    setState(() {
      _searchController.clear();
      _searchQuery = '';
      main_app.recentsSearchActiveNotifier.value = false;
      _updateFilters();
    });
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

  List<CallLogEntry> _applyRecentsFilter(List<CallLogEntry> entries) {
    switch (main_app.recentsFilterNotifier.value) {
      case 'missed':
        return entries
            .where(
              (e) =>
                  e.callType == CallType.missed ||
                  e.callType == CallType.rejected,
            )
            .toList();
      case 'contacts':
        return entries.where((e) => (e.name ?? '').isNotEmpty).toList();
      case 'non_contacts':
        return entries.where((e) => (e.name ?? '').isEmpty).toList();
      default:
        return entries;
    }
  }

  void _updateFilters() {
    final base = _applyRecentsFilter(_entries);
    final filteredEntries = _searchQuery.isEmpty
        ? base
        : base.where((e) {
            final q = _searchQuery.toLowerCase();
            return (e.name ?? '').toLowerCase().contains(q) ||
                (e.number ?? '').contains(q);
          }).toList();

    final groupedFiltered = _groupEntries(filteredEntries);
    final mapFiltered = <String, List<_GroupedCall>>{};
    final now = DateTime.now();
    final todayStr = DateFormat('yyyy-MM-dd').format(now);
    final yesterdayStr = DateFormat(
      'yyyy-MM-dd',
    ).format(now.subtract(const Duration(days: 1)));
    for (final g in groupedFiltered) {
      final date = DateFormat(
        'yyyy-MM-dd',
      ).format(DateTime.fromMillisecondsSinceEpoch(g.timestamp ?? 0));
      String label;
      if (date == todayStr) {
        label = 'Today';
      } else if (date == yesterdayStr) {
        label = 'Yesterday';
      } else {
        label = DateFormat(
          'MMMM d',
        ).format(DateTime.fromMillisecondsSinceEpoch(g.timestamp ?? 0));
      }
      mapFiltered.putIfAbsent(label, () => []).add(g);
    }

    _mapFiltered = mapFiltered;
    _sections = _mapFiltered.keys.toList();

    _flatItems = [];

    if (FavouritesManager.showFavouritesStripOnRecents.value &&
        _searchQuery.isEmpty) {
      _flatItems.add(const _FavouritesRowMarker());
    }

    final filterAll = main_app.recentsFilterNotifier.value == 'all';
    final showFrequent =
        filterAll &&
        main_app.frequentContactsMaxNotifier.value > 0 &&
        _searchQuery.isEmpty;
    if (showFrequent) {
      final frequent = _computeFrequent(_entries);
      if (frequent.isNotEmpty) {
        _flatItems.add(
          _FrequentHeader(
            periodSubtitle: _periodSubtitleFor(
              main_app.frequentContactsPeriodNotifier.value,
            ),
          ),
        );
        _flatItems.addAll(frequent);
        _flatItems.add(const _RecentHistoryHeader());
      }
    }

    for (final section in _sections) {
      _flatItems.add(section);
      _flatItems.addAll(_mapFiltered[section]!);
    }
  }

  int? _cutoffMsForPeriod(String period) {
    final now = DateTime.now();
    switch (period) {
      case 'day':
        return now.subtract(const Duration(days: 1)).millisecondsSinceEpoch;
      case 'week':
        return now.subtract(const Duration(days: 7)).millisecondsSinceEpoch;
      case 'month':
        return now.subtract(const Duration(days: 30)).millisecondsSinceEpoch;
      case 'year':
        return now.subtract(const Duration(days: 365)).millisecondsSinceEpoch;
      case 'all':
      default:
        return null;
    }
  }

  String _periodSubtitleFor(String period) {
    switch (period) {
      case 'day':
        return 'Last 24 hours';
      case 'week':
        return 'Last 7 days';
      case 'month':
        return 'Last 30 days';
      case 'year':
        return 'Last 12 months';
      case 'all':
        return 'All time';
      default:
        return 'Last 12 months';
    }
  }

  bool _isCountableFrequentCallType(CallType? t) {
    if (t == null) return false;
    switch (t) {
      case CallType.incoming:
      case CallType.outgoing:
      case CallType.missed:
      case CallType.rejected:
        return true;
      case CallType.voiceMail:
      case CallType.blocked:
      case CallType.answeredExternally:
      case CallType.unknown:
      case CallType.wifiIncoming:
      case CallType.wifiOutgoing:
        return false;
    }
  }

  /// Ranks numbers by total call count in the selected period (independent of
  /// consecutive grouping used for the main list).
  List<_GroupedCall> _computeFrequent(List<CallLogEntry> entries) {
    final period = main_app.frequentContactsPeriodNotifier.value;
    final maxN = main_app.frequentContactsMaxNotifier.value;
    if (maxN <= 0) return [];
    final cutoffMs = _cutoffMsForPeriod(period);

    final filtered = entries.where((e) {
      if (!_isCountableFrequentCallType(e.callType)) return false;
      final ts = e.timestamp;
      if (ts == null) return false;
      final key = _normalise(e.number);
      if (key.isEmpty) return false;
      if (cutoffMs != null && ts < cutoffMs) return false;
      return true;
    }).toList();

    final byNumber = <String, List<CallLogEntry>>{};
    for (final e in filtered) {
      final key = _normalise(e.number);
      byNumber.putIfAbsent(key, () => []).add(e);
    }

    for (final list in byNumber.values) {
      list.sort((a, b) => (b.timestamp ?? 0).compareTo(a.timestamp ?? 0));
    }

    final keys = byNumber.keys.toList();
    keys.sort((a, b) {
      final la = byNumber[a]!;
      final lb = byNumber[b]!;
      final cmp = lb.length.compareTo(la.length);
      if (cmp != 0) return cmp;
      final ta = la.first.timestamp ?? 0;
      final tb = lb.first.timestamp ?? 0;
      return tb.compareTo(ta);
    });

    final out = <_GroupedCall>[];
    for (final key in keys.take(maxN)) {
      final list = byNumber[key]!;
      final anchor = list.first;
      out.add(
        _GroupedCall(
          name: anchor.name ?? '',
          number: anchor.number ?? '',
          callType: anchor.callType,
          count: list.length,
          timestamp: anchor.timestamp,
          duration: anchor.duration,
          simDisplayName: anchor.simDisplayName,
          relativeTime: _formatRelativeTime(anchor.timestamp),
          entryRelativeTimes: list
              .map((e) => _subtextRelativeTime(e.timestamp))
              .toList(),
          entries: List.from(list),
          isFrequentContact: true,
        ),
      );
    }
    return out;
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
                            context,
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
                                Container(
                                  width: 56,
                                  height: 56,
                                  decoration: BoxDecoration(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.surfaceContainerHighest,
                                    shape: BoxShape.circle,
                                  ),
                                  alignment: Alignment.center,
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
    BuildContext tileContext,
    _GroupedCall group,
    Offset globalPosition, {
    bool fromFavouriteStrip = false,
  }) {
    showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(
        globalPosition.dx,
        globalPosition.dy,
        globalPosition.dx,
        globalPosition.dy,
      ),
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 8,
      items: [
        PopupMenuItem(
          enabled: false,
          child: Text(
            group.number,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        PopupMenuItem(
          value: 'copy',
          child: Row(
            children: [
              Icon(
                Icons.copy_rounded,
                color: Theme.of(context).colorScheme.onSurface,
                size: 20,
              ),
              SizedBox(width: 12),
              Text(
                'Copy number',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'edit_before_call',
          child: Row(
            children: [
              Icon(
                Icons.edit_outlined,
                color: Theme.of(context).colorScheme.onSurface,
                size: 20,
              ),
              SizedBox(width: 12),
              Text(
                'Edit number before call',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        if (fromFavouriteStrip)
          PopupMenuItem(
            value: 'remove_favourite',
            child: Row(
              children: [
                Icon(
                  Icons.star_outline,
                  color: Theme.of(context).colorScheme.onSurface,
                  size: 20,
                ),
                SizedBox(width: 12),
                Text(
                  'Remove from favourites',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        if (!fromFavouriteStrip && FavouritesManager.isFavourite(group.number))
          PopupMenuItem(
            value: 'remove_favourite_recents',
            child: Row(
              children: [
                Icon(
                  Icons.star_rounded,
                  color: Theme.of(context).colorScheme.primary,
                  size: 20,
                ),
                SizedBox(width: 12),
                Text(
                  'Remove from favourites',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        if (!fromFavouriteStrip && !FavouritesManager.isFavourite(group.number))
          PopupMenuItem(
            value: 'add_favourite_recents',
            child: Row(
              children: [
                Icon(
                  Icons.star_outline_rounded,
                  color: Theme.of(context).colorScheme.onSurface,
                  size: 20,
                ),
                SizedBox(width: 12),
                Text(
                  'Add to favourites',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        if (BlockingManager.isBlocked(group.number))
          PopupMenuItem(
            value: 'unblock',
            child: Row(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  color: Theme.of(context).colorScheme.onSurface,
                  size: 20,
                ),
                SizedBox(width: 12),
                Text(
                  'Unblock number',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          )
        else
          PopupMenuItem(
            value: 'block',
            child: Row(
              children: [
                Icon(
                  Icons.block,
                  color: Theme.of(context).colorScheme.onSurface,
                  size: 20,
                ),
                SizedBox(width: 12),
                Text(
                  'Block number',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        if (!fromFavouriteStrip)
          PopupMenuItem(
            value: 'delete',
            child: Row(
              children: const [
                Icon(Icons.delete_outline, color: Color(0xFFFF453A), size: 20),
                SizedBox(width: 12),
                Text(
                  'Delete',
                  style: TextStyle(color: Color(0xFFFF453A), fontSize: 15),
                ),
              ],
            ),
          ),
      ],
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
    final targetSuffix = normalizedTarget.length > 9
        ? normalizedTarget.substring(normalizedTarget.length - 9)
        : normalizedTarget;

    if (group.name.isNotEmpty) {
      final contacts = await FlutterContacts.getContacts(
        withProperties: true,
        withPhoto: true,
      );

      Contact? found;
      for (final c in contacts) {
        if (c.phones.any((p) => _normalise(p.number) == normalizedTarget)) {
          found = c;
          break;
        }
      }

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
        groups.add(
          _GroupedCall(
            name: anchor.name ?? '',
            number: anchor.number ?? '',
            callType: prevType,
            count: count,
            timestamp: anchor.timestamp,
            duration: anchor.duration,
            simDisplayName: anchor.simDisplayName,
            relativeTime: _formatRelativeTime(anchor.timestamp),
            entryRelativeTimes: currentEntries
                .map((e) => _subtextRelativeTime(e.timestamp))
                .toList(),
            entries: List.from(currentEntries),
          ),
        );
        anchor = e;
        prevNumber = num;
        prevType = e.callType;
        count = 1;
        currentEntries = [e];
      }
    }
    // last group
    groups.add(
      _GroupedCall(
        name: anchor.name ?? '',
        number: anchor.number ?? '',
        callType: prevType,
        count: count,
        timestamp: anchor.timestamp,
        duration: anchor.duration,
        simDisplayName: anchor.simDisplayName,
        relativeTime: _formatRelativeTime(anchor.timestamp),
        entryRelativeTimes: currentEntries
            .map((e) => _subtextRelativeTime(e.timestamp))
            .toList(),
        entries: currentEntries,
      ),
    );

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
        return Color(0xFF30D158); // green
      default:
        return Theme.of(context).colorScheme.onSurfaceVariant; // neutral
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
                _updateFilters();
              });
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
                          _updateFilters();
                        });
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
                          _updateFilters();
                        });
                      },
                    ),
              filled: true,
              fillColor: Theme.of(context).colorScheme.surfaceContainerHighest,
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
              key: ValueKey<Object>(
                Object.hash(
                  FavouritesManager.showFavouritesStripOnRecents.value,
                  _flatItems.length,
                  FavouritesManager.favouritesNotifier.value.length,
                  main_app.recentsFilterNotifier.value,
                  BlockingManager.blockedNumbersNotifier.value.length,
                ),
              ),
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
                  cacheExtent:
                      1000, // Pre-build more items for smoother scrolling
                  itemCount: _flatItems.length,
                  itemBuilder: (context, idx) {
                    final item = _flatItems[idx];
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
                        onLongPress:
                            (BuildContext tapContext, Offset globalPosition) =>
                                _showOptions(tapContext, item, globalPosition),
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
            color: _isPressed
                ? Theme.of(context).colorScheme.onSurface.withOpacity(0.08)
                : Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  // Avatar
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Theme.of(
                        context,
                      ).colorScheme.surfaceContainerHighest,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
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
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
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
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withValues(alpha: 0.05),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurface.withValues(alpha: 0.08),
                      width: 0.5,
                    ),
                  ),
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
            color: Theme.of(context).colorScheme.outlineVariant,
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
