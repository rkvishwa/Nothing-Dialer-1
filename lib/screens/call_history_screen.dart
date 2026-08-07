import 'package:flutter/material.dart';
import 'package:call_log/call_log.dart';
import 'package:intl/intl.dart';
import 'package:nothing_dialer/l10n/app_localizations.dart';

import '../extensions/dialer_text_style.dart';
import '../services/app_font_config.dart';
import '../services/l10n_format.dart';
import '../widgets/dialer_font_scope.dart';

/// Grouped call entry — consecutive same-type calls merged with count.
class _HistoryGroup {
  final CallType? callType;
  final int count;
  final int? timestamp; // most recent
  final int? duration; // most recent

  _HistoryGroup({
    required this.callType,
    required this.count,
    required this.timestamp,
    required this.duration,
  });
}

/// Shows all call history for a single phone number,
/// grouped by date and merging consecutive same-type entries.
class CallHistoryScreen extends StatefulWidget {
  final String number;
  final String? contactName;

  const CallHistoryScreen({
    super.key,
    required this.number,
    this.contactName,
  });

  @override
  State<CallHistoryScreen> createState() => _CallHistoryScreenState();
}

class _CallHistoryScreenState extends State<CallHistoryScreen> {
  List<CallLogEntry> _entries = [];
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _loadHistory();
  }

  String _normalise(String? number) =>
      (number ?? '').replaceAll(RegExp(r'[^\d+]'), '');

  Future<void> _loadHistory() async {
    final all = await CallLog.get();
    final normalised = _normalise(widget.number);
    final filtered = all
        .where((e) => _normalise(e.number) == normalised)
        .toList();

    if (mounted) {
      setState(() {
        _entries = filtered;
        _loading = false;
      });
    }
  }

  // ── Grouping logic ──────────────────────────────────────────────────────

  /// Group consecutive same-type entries.
  List<_HistoryGroup> _groupEntries(List<CallLogEntry> entries) {
    if (entries.isEmpty) return [];
    final groups = <_HistoryGroup>[];
    CallType? prevType = entries.first.callType;
    int count = 1;
    CallLogEntry anchor = entries.first;

    for (int i = 1; i < entries.length; i++) {
      final e = entries[i];
      if (e.callType == prevType) {
        count++;
      } else {
        groups.add(_HistoryGroup(
          callType: prevType,
          count: count,
          timestamp: anchor.timestamp,
          duration: anchor.duration,
        ));
        anchor = e;
        prevType = e.callType;
        count = 1;
      }
    }
    groups.add(_HistoryGroup(
      callType: prevType,
      count: count,
      timestamp: anchor.timestamp,
      duration: anchor.duration,
    ));
    return groups;
  }

  /// Group by date sections.
  Map<String, List<_HistoryGroup>> _groupByDate(AppLocalizations l10n) {
    final groups = _groupEntries(_entries);
    final map = <String, List<_HistoryGroup>>{};
    final now = DateTime.now();
    final locale = Localizations.localeOf(context).toString();
    final today = DateFormat('yyyy-MM-dd').format(now);
    final yesterday = DateFormat('yyyy-MM-dd')
        .format(now.subtract(const Duration(days: 1)));

    for (final g in groups) {
      final dt = DateTime.fromMillisecondsSinceEpoch(g.timestamp ?? 0);
      final date = DateFormat('yyyy-MM-dd').format(dt);
      String label;
      if (date == today) {
        label = l10n.today;
      } else if (date == yesterday) {
        label = l10n.yesterday;
      } else {
        label = DateFormat.yMMMMd(locale).format(dt);
      }
      map.putIfAbsent(label, () => []).add(g);
    }
    return map;
  }

  // ── Helpers ──────────────────────────────────────────────────────────────

  Color _callTypeColor(CallType? type) {
    switch (type) {
      case CallType.missed:
      case CallType.rejected:
        return const Color(0xFFFF453A);
      case CallType.incoming:
        return Color(0xFF30D158);
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

  String _formatDuration(AppLocalizations l10n, int? seconds) {
    if (seconds == null || seconds == 0) return '';
    final m = seconds ~/ 60;
    final s = seconds % 60;
    if (m > 0) return l10n.durationMinutesSeconds(m, s);
    return l10n.durationSeconds(s);
  }

  // ── Build ───────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final title = widget.contactName ?? widget.number;

    return DialerFontScope(
      surface: DialerFontSurface.callHistory,
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
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: context.dialerTextStyle(
                    DialerFontRole.pageTitle,
                    TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 18,
                        fontWeight: FontWeight.w500))),
            if (widget.contactName != null)
              Text(widget.number,
                  style: context.dialerTextStyle(
                      DialerFontRole.secondary,
                      TextStyle(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          fontSize: 13))),
          ],
        ),
      ),
      body: _loading
          ? Center(
              child: CircularProgressIndicator(
                  color: Theme.of(context).colorScheme.onSurface,
                  strokeWidth: 1.5))
          : _entries.isEmpty
              ? Center(
                  child: Text(l10n.noCallHistoryFound,
                      style: context.dialerTextStyle(
                          DialerFontRole.secondary,
                          TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurfaceVariant))))
              : _buildGroupedList(l10n),
      ),
    );
  }

  Widget _buildGroupedList(AppLocalizations l10n) {
    final dateMap = _groupByDate(l10n);
    final sections = dateMap.keys.toList();
    final locale = Localizations.localeOf(context).toString();

    return ListView.builder(
      padding: const EdgeInsets.only(top: 8, bottom: 24),
      itemCount:
          sections.fold<int>(0, (sum, s) => sum + 1 + dateMap[s]!.length),
      itemBuilder: (context, idx) {
        int running = 0;
        for (final section in sections) {
          // Section header
          if (idx == running) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 8),
              child: Text(
                section,
                style: context.dialerTextStyle(
                  DialerFontRole.sectionHeader,
                  TextStyle(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.6,
                  ),
                ),
              ),
            );
          }
          running++;
          final items = dateMap[section]!;
          if (idx < running + items.length) {
            final group = items[idx - running];
            final dt =
                DateTime.fromMillisecondsSinceEpoch(group.timestamp ?? 0);
            final timeStr = DateFormat.jm(locale).format(dt);
            final color = _callTypeColor(group.callType);
            final icon = _callTypeIcon(group.callType);
            final typeName = callTypeLabel(l10n, group.callType);
            final dur = _formatDuration(l10n, group.duration);

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  // Type icon
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: color.withValues(alpha: 0.12),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(icon, color: color, size: 20),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          group.count > 1
                              ? '$typeName (${group.count})'
                              : typeName,
                          style: context.dialerTextStyle(
                            DialerFontRole.primary,
                            TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          dur.isNotEmpty ? '$timeStr · $dur' : timeStr,
                          style: context.dialerTextStyle(
                            DialerFontRole.secondary,
                            TextStyle(
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSurfaceVariant,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
          running += items.length;
        }
        return const SizedBox.shrink();
      },
    );
  }
}
