import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Shows a beautiful SIM selection bottom sheet.
///
/// Returns the selected SIM index (0-based), or `null` if cancelled.
/// If there's only one SIM, it auto-selects it and returns 0.
Future<int?> showSimPicker(BuildContext context, {bool allowAlwaysAsk = false}) async {
  const channel = MethodChannel('nothing_dialer/control');

  // Fetch available SIMs from native side
  final List<dynamic>? raw =
      await channel.invokeMethod<List<dynamic>>('getSimCards');

  if (raw == null || raw.isEmpty) {
    // No SIMs — fall back to default (index 0)
    return 0;
  }

  final sims = raw.cast<Map<dynamic, dynamic>>();

  // Single SIM and NO "Always ask" required → auto-select
  if (sims.length == 1 && !allowAlwaysAsk) return 0;

  // Multiple SIMs or "Always ask" required → show picker
  if (!context.mounted) return null;

  return showModalBottomSheet<int>(
    context: context,
    backgroundColor: Colors.transparent,
    barrierColor: Colors.black.withValues(alpha: 0.55),
    isScrollControlled: true,
    builder: (_) => _SimPickerSheet(sims: sims, allowAlwaysAsk: allowAlwaysAsk),
  );
}

// ─────────────────────────────────────────────────────────────────────────────

class _SimPickerSheet extends StatelessWidget {
  final List<Map<dynamic, dynamic>> sims;
  final bool allowAlwaysAsk;

  const _SimPickerSheet({required this.sims, this.allowAlwaysAsk = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF1C1B1F),
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Handle
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: Container(
                  width: 32,
                  height: 4,
                  decoration: BoxDecoration(
                    color: const Color(0xFF49454F),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ),

            // Title
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 16, 24, 8),
              child: Text(
                'Choose SIM for this call',
                style: TextStyle(
                  color: Color(0xFFE6E1E5),
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            // SIM options
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                children: [
                  ...sims.asMap().entries.map((entry) {
                    final idx = entry.key;
                    final sim = entry.value;
                    final label = sim['label'] as String? ?? 'SIM ${idx + 1}';
                    final slot = (sim['slot'] as int?) ?? (idx + 1);

                    return _SimOption(
                      simSlot: slot,
                      label: label,
                      onTap: () => Navigator.pop(context, idx),
                    );
                  }),
                  if (allowAlwaysAsk)
                    _SimOption(
                      simSlot: 0,
                      label: 'Always ask',
                      icon: Icons.question_mark,
                      onTap: () => Navigator.pop(context, -1),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────

class _SimOption extends StatelessWidget {
  final int simSlot;
  final String label;
  final IconData? icon;
  final VoidCallback onTap;

  const _SimOption({
    required this.simSlot,
    required this.label,
    this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // M3 accent colors for SIMs
    final colors = [
      const Color(0xFFD0BCFF), // Primary Purple
      const Color(0xFF81C784), // Light Green
      const Color(0xFF4FC3F7), // Light Blue
    ];
    // simSlot 0 (Always ask) gets a special color
    final color = simSlot == 0 ? const Color(0xFFCAC4D0) : colors[(simSlot - 1) % colors.length];

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            children: [
              // SIM icon
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Icon(
                  icon ?? Icons.sim_card,
                  color: const Color(0xFF141218), // Dark icon color
                  size: 20,
                ),
              ),
              const SizedBox(width: 16),

              // Label + slot
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: const TextStyle(
                        color: Color(0xFFE6E1E5),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    if (simSlot > 0) ...[
                      const SizedBox(height: 2),
                      Text(
                        'SIM $simSlot',
                        style: const TextStyle(
                          color: Color(0xFFCAC4D0),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
