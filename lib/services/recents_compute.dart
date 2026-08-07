// Heavy Recents list processing for background isolate (compute).
// ignore_for_file: avoid_dynamic_calls

import 'package:call_log/call_log.dart';
import 'package:intl/intl.dart';

/// Labels for relative/date strings used in the recents isolate.
class RecentsTimeLabels {
  final String today;
  final String yesterday;
  final String justNow;
  final String localeName;
  final String minutesAgoTemplate;
  final String hoursAgoTemplate;

  const RecentsTimeLabels({
    required this.today,
    required this.yesterday,
    required this.justNow,
    required this.localeName,
    required this.minutesAgoTemplate,
    required this.hoursAgoTemplate,
  });

  String minutesAgo(int count) =>
      minutesAgoTemplate.replaceAll('{count}', '$count');

  String hoursAgo(int count) => hoursAgoTemplate.replaceAll('{count}', '$count');
}

/// Arguments for [recentsComputeMain] — must be sendable between isolates.
class RecentsComputeArgs {
  final List<Map<String, dynamic>> allEntries;
  final String recentsFilter;
  final String searchQuery;
  final int frequentMax;
  final String frequentPeriod;
  final bool showFavouritesStrip;
  final bool showFrequentSection;
  final int nowMs;
  final RecentsTimeLabels timeLabels;
  final String frequentPeriodLabel;

  const RecentsComputeArgs({
    required this.allEntries,
    required this.recentsFilter,
    required this.searchQuery,
    required this.frequentMax,
    required this.frequentPeriod,
    required this.showFavouritesStrip,
    required this.showFrequentSection,
    required this.nowMs,
    required this.timeLabels,
    required this.frequentPeriodLabel,
  });
}

/// Top-level entry for [compute].
RecentsProcessOutput recentsComputeMain(RecentsComputeArgs args) =>
    _buildRecentsData(args);

/// Serialize a call log row for [compute] / caching (UI isolate).
Map<String, dynamic> serializeCallLogEntry(CallLogEntry e) =>
    _serializeEntry(e);

class RecentsProcessOutput {
  final List<Map<String, dynamic>> flatItems;

  const RecentsProcessOutput({required this.flatItems});
}

int _callTypeToNative(CallType? t) {
  if (t == null) return 0;
  switch (t) {
    case CallType.wifiOutgoing:
      return 100;
    case CallType.wifiIncoming:
      return 101;
    default:
      return t.index + 1;
  }
}

CallLogEntry _entryFromMap(Map<String, dynamic> m) =>
    CallLogEntry.fromMap(Map<dynamic, dynamic>.from(m));

String _normalise(String? number) =>
    (number ?? '').replaceAll(RegExp(r'[^\d+]'), '');

RecentsProcessOutput _buildRecentsData(RecentsComputeArgs args) {
  final now = DateTime.fromMillisecondsSinceEpoch(args.nowMs);
  final entries = args.allEntries.map(_entryFromMap).toList();

  List<CallLogEntry> base = _applyRecentsFilter(entries, args.recentsFilter);
  if (args.searchQuery.isNotEmpty) {
    final q = args.searchQuery.toLowerCase();
    base = base.where((e) {
      return (e.name ?? '').toLowerCase().contains(q) ||
          (e.number ?? '').contains(q);
    }).toList();
  }

  final forGrouping = base;

  final groupedFiltered = _groupEntries(forGrouping, args.nowMs, args.timeLabels);
  final mapFiltered = <String, List<Map<String, dynamic>>>{};
  final todayStr = DateFormat('yyyy-MM-dd').format(now);
  final yesterdayStr = DateFormat(
    'yyyy-MM-dd',
  ).format(now.subtract(const Duration(days: 1)));

  for (final g in groupedFiltered) {
    final date = DateFormat(
      'yyyy-MM-dd',
    ).format(DateTime.fromMillisecondsSinceEpoch(g['timestamp'] as int? ?? 0));
    String label;
    if (date == todayStr) {
      label = args.timeLabels.today;
    } else if (date == yesterdayStr) {
      label = args.timeLabels.yesterday;
    } else {
      label = DateFormat(
        'MMMM d',
        args.timeLabels.localeName,
      ).format(DateTime.fromMillisecondsSinceEpoch(g['timestamp'] as int? ?? 0));
    }
    mapFiltered.putIfAbsent(label, () => []).add(g);
  }

  final sections = mapFiltered.keys.toList();
  final flatItems = <Map<String, dynamic>>[];

  if (args.showFavouritesStrip && args.searchQuery.isEmpty) {
    flatItems.add({'kind': 'favourites_marker'});
  }

  final filterAll = args.recentsFilter == 'all';
  final showFrequent = filterAll &&
      args.showFrequentSection &&
      args.frequentMax > 0 &&
      args.searchQuery.isEmpty;

  if (showFrequent) {
    final frequent = _computeFrequent(
      entries,
      args.frequentPeriod,
      args.frequentMax,
      now,
      args.nowMs,
      args.timeLabels,
    );
    if (frequent.isNotEmpty) {
      flatItems.add({
        'kind': 'frequent_header',
        'subtitle': args.frequentPeriodLabel,
      });
      flatItems.addAll(frequent);
      flatItems.add({'kind': 'recent_history_header'});
    }
  }

  for (final section in sections) {
    flatItems.add({'kind': 'section', 'label': section});
    flatItems.addAll(mapFiltered[section]!);
  }

  return RecentsProcessOutput(flatItems: flatItems);
}

List<CallLogEntry> _applyRecentsFilter(
  List<CallLogEntry> entries,
  String filter,
) {
  switch (filter) {
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

int? _cutoffMsForPeriod(String period, DateTime now) {
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

List<Map<String, dynamic>> _computeFrequent(
  List<CallLogEntry> entries,
  String period,
  int maxN,
  DateTime now,
  int nowMs,
  RecentsTimeLabels labels,
) {
  if (maxN <= 0) return [];
  final cutoffMs = _cutoffMsForPeriod(period, now);

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

  for (final bucket in byNumber.values) {
    bucket.sort((a, b) => (b.timestamp ?? 0).compareTo(a.timestamp ?? 0));
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

  final out = <Map<String, dynamic>>[];
  for (final key in keys.take(maxN)) {
    final list = byNumber[key]!;
    final anchor = list.first;
    out.add(
      _groupedCallToMap(
        name: anchor.name ?? '',
        number: anchor.number ?? '',
        callType: anchor.callType,
        count: list.length,
        timestamp: anchor.timestamp,
        duration: anchor.duration,
        simDisplayName: anchor.simDisplayName,
        relativeTime: _formatRelativeTime(anchor.timestamp, nowMs, labels),
        entryRelativeTimes: list
            .map((e) => _subtextRelativeTime(e.timestamp, nowMs, labels))
            .toList(),
        entries: List<CallLogEntry>.from(list),
        isFrequentContact: true,
      ),
    );
  }
  return out;
}

Map<String, dynamic> _groupedCallToMap({
  required String name,
  required String number,
  required CallType? callType,
  required int count,
  required int? timestamp,
  required int? duration,
  required String? simDisplayName,
  required String relativeTime,
  required List<String> entryRelativeTimes,
  required List<CallLogEntry> entries,
  bool isFrequentContact = false,
}) {
  return {
    'kind': 'group',
    'name': name,
    'number': number,
    'callType': _callTypeToNative(callType),
    'count': count,
    'timestamp': timestamp,
    'duration': duration,
    'simDisplayName': simDisplayName,
    'relativeTime': relativeTime,
    'entryRelativeTimes': entryRelativeTimes,
    'entries': entries.map(_serializeEntry).toList(),
    'isFrequentContact': isFrequentContact,
  };
}

Map<String, dynamic> _serializeEntry(CallLogEntry e) {
  return {
    'name': e.name,
    'number': e.number,
    'formattedNumber': e.formattedNumber,
    'callType': _callTypeToNative(e.callType),
    'duration': e.duration,
    'timestamp': e.timestamp,
    'cachedNumberType': e.cachedNumberType,
    'cachedNumberLabel': e.cachedNumberLabel,
    if (e.cachedMatchedNumber != null)
      'cachedMatchedNumber': e.cachedMatchedNumber,
    'simDisplayName': e.simDisplayName,
    'phoneAccountId': e.phoneAccountId,
    '_id': e.id,
  };
}

List<Map<String, dynamic>> _groupEntries(
  List<CallLogEntry> entries,
  int nowMs,
  RecentsTimeLabels labels,
) {
  if (entries.isEmpty) return [];

  final groups = <Map<String, dynamic>>[];
  String? prevNumber = _normalise(entries.first.number);
  CallType? prevType = entries.first.callType;
  var count = 1;
  var anchor = entries.first;
  var currentEntries = <CallLogEntry>[entries.first];

  for (int i = 1; i < entries.length; i++) {
    final e = entries[i];
    final num = _normalise(e.number);
    if (num == prevNumber && e.callType == prevType) {
      count++;
      currentEntries.add(e);
    } else {
      groups.add(
        _groupedCallToMap(
          name: anchor.name ?? '',
          number: anchor.number ?? '',
          callType: prevType,
          count: count,
          timestamp: anchor.timestamp,
          duration: anchor.duration,
          simDisplayName: anchor.simDisplayName,
          relativeTime: _formatRelativeTime(anchor.timestamp, nowMs, labels),
          entryRelativeTimes: currentEntries
              .map((e) => _subtextRelativeTime(e.timestamp, nowMs, labels))
              .toList(),
          entries: List<CallLogEntry>.from(currentEntries),
        ),
      );
      anchor = e;
      prevNumber = num;
      prevType = e.callType;
      count = 1;
      currentEntries = [e];
    }
  }
  groups.add(
    _groupedCallToMap(
      name: anchor.name ?? '',
      number: anchor.number ?? '',
      callType: prevType,
      count: count,
      timestamp: anchor.timestamp,
      duration: anchor.duration,
      simDisplayName: anchor.simDisplayName,
      relativeTime: _formatRelativeTime(anchor.timestamp, nowMs, labels),
      entryRelativeTimes: currentEntries
          .map((e) => _subtextRelativeTime(e.timestamp, nowMs, labels))
          .toList(),
      entries: currentEntries,
    ),
  );

  return groups;
}

String _subtextRelativeTime(int? ms, int nowMs, RecentsTimeLabels labels) {
  if (ms == null) return '';
  final dt = DateTime.fromMillisecondsSinceEpoch(ms);
  final diff = Duration(milliseconds: nowMs - dt.millisecondsSinceEpoch);
  if (diff.inMinutes < 1) return labels.justNow;
  if (diff.inMinutes < 60) return labels.minutesAgo(diff.inMinutes);
  if (diff.inHours < 24) return labels.hoursAgo(diff.inHours);
  return DateFormat('MMM d', labels.localeName).format(dt);
}

String _formatRelativeTime(int? ms, int nowMs, RecentsTimeLabels labels) {
  if (ms == null) return '';
  final dt = DateTime.fromMillisecondsSinceEpoch(ms);
  final diff = Duration(milliseconds: nowMs - dt.millisecondsSinceEpoch);

  if (diff.inMinutes < 1) return labels.justNow;
  if (diff.inMinutes < 60) return labels.minutesAgo(diff.inMinutes);
  if (diff.inHours < 24) return DateFormat('HH:mm', labels.localeName).format(dt);
  if (diff.inDays == 1) return labels.yesterday;
  return DateFormat('MMM d, yyyy', labels.localeName).format(dt);
}
