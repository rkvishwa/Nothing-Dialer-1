import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// SharedPreferences keys for global default outgoing SIM (also used from Settings).
const String kDefaultSimModeKey = 'default_sim_mode';
const String kDefaultSimIndexKey = 'default_sim_index';
const String kDefaultSimModeAsk = 'ask';
const String kDefaultSimModeFixed = 'fixed';

/// Shows a SIM selection bottom sheet.
///
/// Returns the selected SIM index (0-based), or `null` if cancelled.
/// If there's only one SIM, returns 0 without showing the sheet.
///
/// When [rememberChoice] is true (default), a "Don't ask again" checkbox is shown;
/// if checked when the user picks a SIM, the choice is saved as the global default.
Future<int?> showSimPicker(
  BuildContext context, {
  bool rememberChoice = true,
}) async {
  const channel = MethodChannel('nothing_dialer/control');

  final prefs = await SharedPreferences.getInstance();

  final List<dynamic>? raw = await channel.invokeMethod<List<dynamic>>(
    'getSimCards',
  );

  if (raw == null || raw.isEmpty) {
    return 0;
  }

  final sims = raw.cast<Map<dynamic, dynamic>>();

  final mode = prefs.getString(kDefaultSimModeKey) ?? kDefaultSimModeAsk;
  final savedIdx = prefs.getInt(kDefaultSimIndexKey);
  if (mode == kDefaultSimModeFixed &&
      savedIdx != null &&
      savedIdx >= 0 &&
      savedIdx < sims.length) {
    return savedIdx;
  }

  if (sims.length == 1) {
    return 0;
  }

  if (!context.mounted) return null;

  return showModalBottomSheet<int>(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (_) => _SimPickerSheet(sims: sims, rememberChoice: rememberChoice),
  );
}

// ─────────────────────────────────────────────────────────────────────────────

class _SimPickerSheet extends StatefulWidget {
  final List<Map<dynamic, dynamic>> sims;
  final bool rememberChoice;

  const _SimPickerSheet({required this.sims, required this.rememberChoice});

  @override
  State<_SimPickerSheet> createState() => _SimPickerSheetState();
}

class _SimPickerSheetState extends State<_SimPickerSheet> {
  bool _dontAskAgain = false;

  Future<void> _onSelectSim(int idx) async {
    if (widget.rememberChoice && _dontAskAgain) {
      final p = await SharedPreferences.getInstance();
      await p.setString(kDefaultSimModeKey, kDefaultSimModeFixed);
      await p.setInt(kDefaultSimIndexKey, idx);
    }
    if (mounted) Navigator.pop(context, idx);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
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
                    color: Theme.of(context).colorScheme.outlineVariant,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
              child: Text(
                'Choose SIM for this call',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                children: [
                  ...widget.sims.asMap().entries.map((entry) {
                    final idx = entry.key;
                    final sim = entry.value;
                    final label = sim['label'] as String? ?? 'SIM ${idx + 1}';
                    final slot = (sim['slot'] as int?) ?? (idx + 1);

                    return _SimOption(
                      simSlot: slot,
                      label: label,
                      onTap: () => _onSelectSim(idx),
                    );
                  }),
                ],
              ),
            ),

            if (widget.rememberChoice)
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                child: CheckboxListTile(
                  value: _dontAskAgain,
                  onChanged: (v) =>
                      setState(() => _dontAskAgain = v ?? false),
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(
                    "Don't ask again",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontSize: 15,
                    ),
                  ),
                  subtitle: Text(
                    'Use this SIM as default (change in Settings)',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),

            const SizedBox(height: 8),
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
  final VoidCallback onTap;

  const _SimOption({
    required this.simSlot,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = [
      Theme.of(context).colorScheme.primary,
      const Color(0xFF81C784),
      const Color(0xFF4FC3F7),
    ];
    final colorIdx = simSlot >= 1 ? (simSlot - 1) % colors.length : 0;
    final color = colors[colorIdx];

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
                alignment: Alignment.center,
                child: Icon(
                  Icons.sim_card,
                  color: Theme.of(context).colorScheme.onPrimary,
                  size: 20,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      label,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'SIM $simSlot',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
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
