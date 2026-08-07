import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../services/sim_icon_colors.dart';
import '../services/theme_colors.dart';
import '../widgets/settings_picker_sheet.dart';
import 'package:nothing_dialer/l10n/app_localizations.dart';

/// Opens a single panel to customize every SIM badge (style + color).
Future<void> showSimIconColorsSheet({
  required BuildContext context,
  required List<SimCardInfo> sims,
  required Map<int, SimIconThemeColors> colors,
  required bool isDark,
  required Future<void> Function({
    required int index,
    required SimIconBadgeStyle? style,
    required Color? color,
    required bool reset,
  }) onChanged,
}) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    isDismissible: true,
    enableDrag: true,
    backgroundColor: Colors.transparent,
    builder: (sheetContext) {
      return _SimIconColorsSheet(
        sims: sims,
        initialColors: colors,
        isDark: isDark,
        onChanged: onChanged,
      );
    },
  );
}

class _SimIconColorsSheet extends StatefulWidget {
  const _SimIconColorsSheet({
    required this.sims,
    required this.initialColors,
    required this.isDark,
    required this.onChanged,
  });

  final List<SimCardInfo> sims;
  final Map<int, SimIconThemeColors> initialColors;
  final bool isDark;
  final Future<void> Function({
    required int index,
    required SimIconBadgeStyle? style,
    required Color? color,
    required bool reset,
  }) onChanged;

  @override
  State<_SimIconColorsSheet> createState() => _SimIconColorsSheetState();
}

class _SimIconColorsSheetState extends State<_SimIconColorsSheet> {
  late Map<int, SimIconThemeColors> _colors;
  SimCardInfo? _editing;

  @override
  void initState() {
    super.initState();
    _colors = Map<int, SimIconThemeColors>.from(widget.initialColors);
  }

  List<Color> get _presets =>
      widget.isDark ? kSimIconColorDarkPresets : kSimIconColorLightPresets;

  bool _isThemeDefault(int index) => _colors[index]?.isCustom != true;

  Color? _colorFor(int index) {
    final entry = _colors[index];
    return widget.isDark ? entry?.dark : entry?.light;
  }

  SimIconBadgeStyle? _styleFor(int index) => _colors[index]?.style;

  String _summary(AppLocalizations l10n, SimCardInfo sim) {
    if (_isThemeDefault(sim.index)) return l10n.simIconColorDefault;
    final style = _styleFor(sim.index);
    final label = style == SimIconBadgeStyle.fill
        ? l10n.simIconStyleFill
        : l10n.simIconStyleOutline;
    final c = _colorFor(sim.index);
    if (c == null) return label;
    final hex = (c.toARGB32() & 0xFFFFFF)
        .toRadixString(16)
        .padLeft(6, '0')
        .toUpperCase();
    return '$label · #$hex';
  }

  Future<void> _apply({
    required int index,
    SimIconBadgeStyle? style,
    Color? color,
    bool reset = false,
  }) async {
    await widget.onChanged(
      index: index,
      style: style,
      color: color,
      reset: reset,
    );
    if (!mounted) return;
    setState(() {
      if (reset) {
        _colors.remove(index);
        return;
      }
      final prev = _colors[index] ?? const SimIconThemeColors();
      final nextStyle = style ?? prev.style ?? SimIconBadgeStyle.outline;
      Color? nextLight = prev.light;
      Color? nextDark = prev.dark;
      if (widget.isDark) {
        nextDark = color;
      } else {
        nextLight = color;
        if (color != null && prev.dark == null) {
          final presetIdx = kSimIconColorLightPresets.indexWhere(
            (p) => colorsEqual(p, color),
          );
          nextDark = presetIdx >= 0
              ? kSimIconColorDarkPresets[presetIdx]
              : darkenSimIconColor(color);
        }
      }
      _colors[index] = SimIconThemeColors(
        style: nextStyle,
        light: nextLight,
        dark: nextDark,
      );
    });
  }

  Future<void> _setStyle(int index, SimIconBadgeStyle? style) async {
    if (style == null) {
      await _apply(index: index, reset: true);
      return;
    }
    final currentColor = _colorFor(index) ?? _presets.first;
    await _apply(index: index, style: style, color: currentColor);
  }

  Future<void> _setColor(int index, Color color) async {
    final style = _styleFor(index) ?? SimIconBadgeStyle.outline;
    await _apply(index: index, style: style, color: color);
  }

  Future<void> _showCustomPicker(int index) async {
    final l10n = AppLocalizations.of(context);
    Color pickerColor = _colorFor(index) ?? _presets.first;
    final result = await showDialog<Color>(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: Theme.of(ctx).colorScheme.surface,
          title: Text(
            l10n.customSimIconColorPicker,
            style: TextStyle(color: Theme.of(ctx).colorScheme.onSurface),
          ),
          content: StatefulBuilder(
            builder: (ctx, setDialogState) {
              return SingleChildScrollView(
                child: ColorPicker(
                  pickerColor: pickerColor,
                  onColorChanged: (c) => setDialogState(() => pickerColor = c),
                  enableAlpha: false,
                  displayThumbColor: true,
                  paletteType: PaletteType.hsvWithHue,
                  pickerAreaHeightPercent: 0.72,
                ),
              );
            },
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text(
                l10n.cancel,
                style: TextStyle(color: Theme.of(ctx).colorScheme.primary),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pop(ctx, pickerColor),
              child: Text(
                l10n.done,
                style: TextStyle(color: Theme.of(ctx).colorScheme.primary),
              ),
            ),
          ],
        );
      },
    );
    if (result != null) {
      await _setColor(index, result);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final editing = _editing;

    return wrapSettingsPickerSheet(
      context,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (editing == null) ...[
            const SettingsPickerHandle(),
            SettingsPickerTitle(title: l10n.simIconColor),
            for (final sim in widget.sims)
              SettingsPickerNavRow(
                icon: Icons.sim_card_outlined,
                label: sim.label.isNotEmpty ? sim.label : l10n.simSlot(sim.slot),
                subtitle: _summary(l10n, sim),
                onTap: () => setState(() => _editing = sim),
              ),
          ] else ...[
            SettingsPickerSubpageHeader(
              title: editing.label.isNotEmpty
                  ? editing.label
                  : l10n.simSlot(editing.slot),
              onBack: () => setState(() => _editing = null),
            ),
            SettingsPickerOption(
              icon: Icons.layers_outlined,
              label: l10n.simIconColorDefault,
              subtitle: l10n.simSlot(editing.slot),
              selected: _isThemeDefault(editing.index),
              onTap: () => _setStyle(editing.index, null),
            ),
            SettingsPickerOption(
              icon: Icons.crop_square_outlined,
              label: l10n.simIconStyleOutline,
              subtitle: '',
              selected: !_isThemeDefault(editing.index) &&
                  _styleFor(editing.index) == SimIconBadgeStyle.outline,
              onTap: () => _setStyle(editing.index, SimIconBadgeStyle.outline),
            ),
            SettingsPickerOption(
              icon: Icons.square_rounded,
              label: l10n.simIconStyleFill,
              subtitle: '',
              selected: !_isThemeDefault(editing.index) &&
                  _styleFor(editing.index) == SimIconBadgeStyle.fill,
              onTap: () => _setStyle(editing.index, SimIconBadgeStyle.fill),
            ),
            if (!_isThemeDefault(editing.index))
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
                child: Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    for (final color in _presets)
                      _ColorDot(
                        color: color,
                        selected: () {
                          final c = _colorFor(editing.index);
                          return c != null && colorsEqual(c, color);
                        }(),
                        onTap: () => _setColor(editing.index, color),
                      ),
                    _CustomColorDot(
                      onTap: () => _showCustomPicker(editing.index),
                    ),
                  ],
                ),
              ),
          ],
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class _ColorDot extends StatelessWidget {
  const _ColorDot({
    required this.color,
    required this.selected,
    required this.onTap,
  });

  final Color color;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Material(
      color: color,
      shape: CircleBorder(
        side: BorderSide(
          color: selected ? scheme.primary : scheme.outlineVariant,
          width: selected ? 3 : 1.5,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        customBorder: const CircleBorder(),
        child: SizedBox(
          width: 48,
          height: 48,
          child: selected
              ? Icon(
                  Icons.check,
                  color: color.computeLuminance() > 0.5
                      ? Colors.black54
                      : Colors.white70,
                )
              : null,
        ),
      ),
    );
  }
}

class _CustomColorDot extends StatelessWidget {
  const _CustomColorDot({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Material(
      color: Colors.transparent,
      shape: CircleBorder(
        side: BorderSide(color: scheme.outlineVariant, width: 1.5),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        customBorder: const CircleBorder(),
        child: SizedBox(
          width: 48,
          height: 48,
          child: Icon(Icons.colorize_outlined, color: scheme.onSurfaceVariant),
        ),
      ),
    );
  }
}
