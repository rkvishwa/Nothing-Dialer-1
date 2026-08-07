import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'theme_colors.dart';

/// One installed SIM for badge coloring.
class SimCardInfo {
  const SimCardInfo({
    required this.index,
    required this.label,
    required this.slot,
  });

  final int index;
  final String label;
  final int slot;

  String get normalizedLabel => normalizeSimLabel(label);
}

enum SimIconBadgeStyle { outline, fill }

/// Per-SIM badge style + light/dark accent colors.
///
/// [style] null means system default (theme outline + theme text).
class SimIconThemeColors {
  const SimIconThemeColors({this.style, this.light, this.dark});

  final SimIconBadgeStyle? style;
  final Color? light;
  final Color? dark;

  bool get isCustom => style != null;

  Color? forBrightness(Brightness brightness) {
    if (brightness == Brightness.dark) {
      return dark ?? (light != null ? darkenSimIconColor(light!) : null);
    }
    return light ?? dark;
  }

  SimIconThemeColors copyWith({
    SimIconBadgeStyle? style,
    Color? light,
    Color? dark,
    bool clearStyle = false,
    bool clearLight = false,
    bool clearDark = false,
  }) {
    return SimIconThemeColors(
      style: clearStyle ? null : (style ?? this.style),
      light: clearLight ? null : (light ?? this.light),
      dark: clearDark ? null : (dark ?? this.dark),
    );
  }
}

/// Resolved paint values for a badge in the current theme.
class SimIconResolvedStyle {
  const SimIconResolvedStyle({
    required this.filled,
    required this.shapeColor,
    required this.glyphColor,
  });

  final bool filled;
  final Color shapeColor;
  final Color glyphColor;
}

/// Per-SIM badge colors + label map for resolving call-log display names.
class SimIconColorsState {
  const SimIconColorsState({
    this.byIndex = const {},
    this.sims = const [],
  });

  final Map<int, SimIconThemeColors> byIndex;
  final List<SimCardInfo> sims;

  static const empty = SimIconColorsState();

  bool get hasMultiSim => sims.length >= 2;

  SimIconResolvedStyle resolve({
    required String? displayName,
    required Brightness brightness,
    required Color themeOutline,
  }) {
    if (displayName == null || displayName.isEmpty) {
      return _themeDefault(themeOutline);
    }
    final index = indexForDisplayName(displayName);
    if (index == null) return _themeDefault(themeOutline);
    return resolveForIndex(
      index: index,
      brightness: brightness,
      themeOutline: themeOutline,
    );
  }

  SimIconResolvedStyle resolveForIndex({
    required int index,
    required Brightness brightness,
    required Color themeOutline,
  }) {
    return _resolveEntry(byIndex[index], brightness, themeOutline);
  }

  static SimIconResolvedStyle _themeDefault(Color themeOutline) {
    return SimIconResolvedStyle(
      filled: false,
      shapeColor: themeOutline,
      glyphColor: themeOutline,
    );
  }

  static SimIconResolvedStyle _resolveEntry(
    SimIconThemeColors? entry,
    Brightness brightness,
    Color themeOutline,
  ) {
    if (entry == null || entry.style == null) {
      return _themeDefault(themeOutline);
    }
    final color = entry.forBrightness(brightness) ?? themeOutline;
    if (entry.style == SimIconBadgeStyle.fill) {
      return SimIconResolvedStyle(
        filled: true,
        shapeColor: color,
        glyphColor: contentOnAccent(color),
      );
    }
    return SimIconResolvedStyle(
      filled: false,
      shapeColor: color,
      glyphColor: color,
    );
  }

  int? indexForDisplayName(String displayName) {
    final needle = normalizeSimLabel(displayName);
    if (needle.isEmpty) return null;
    for (final sim in sims) {
      if (sim.normalizedLabel == needle) return sim.index;
    }
    final letter = needle[0];
    final matches = sims
        .where(
          (s) =>
              s.normalizedLabel.isNotEmpty && s.normalizedLabel[0] == letter,
        )
        .toList();
    if (matches.length == 1) return matches.first.index;
    return null;
  }

  SimIconColorsState copyWith({
    Map<int, SimIconThemeColors>? byIndex,
    List<SimCardInfo>? sims,
  }) {
    return SimIconColorsState(
      byIndex: byIndex ?? this.byIndex,
      sims: sims ?? this.sims,
    );
  }
}

String normalizeSimLabel(String label) => label.trim().toLowerCase();

String simIconStyleKey(int index) => 'sim_icon_style_$index';
String simIconColorLightKey(int index) => 'sim_icon_color_light_$index';
String simIconColorDarkKey(int index) => 'sim_icon_color_dark_$index';

/// Brighter presets for light theme.
const List<Color> kSimIconColorLightPresets = [
  Color(0xFFE53935),
  Color(0xFF43A047),
  Color(0xFF1E88E5),
  Color(0xFF8E24AA),
  Color(0xFFFFB300),
];

/// Darker presets for dark theme (paired with [kSimIconColorLightPresets]).
const List<Color> kSimIconColorDarkPresets = [
  Color(0xFFB71C1C),
  Color(0xFF2E7D32),
  Color(0xFF1565C0),
  Color(0xFF6A1B9A),
  Color(0xFFE65100),
];

Color darkenSimIconColor(Color c) {
  final hsl = HSLColor.fromColor(c);
  final nextL = (hsl.lightness * 0.72).clamp(0.12, 0.55);
  return hsl.withLightness(nextL).toColor();
}

SimIconBadgeStyle? parseSimIconBadgeStyle(String? raw) {
  switch (raw) {
    case 'outline':
      return SimIconBadgeStyle.outline;
    case 'fill':
      return SimIconBadgeStyle.fill;
    default:
      return null;
  }
}

String? encodeSimIconBadgeStyle(SimIconBadgeStyle? style) {
  switch (style) {
    case SimIconBadgeStyle.outline:
      return 'outline';
    case SimIconBadgeStyle.fill:
      return 'fill';
    case null:
      return null;
  }
}

Future<Map<int, SimIconThemeColors>> loadSimIconColorsFromPrefs(
  SharedPreferences prefs, {
  int maxIndex = 3,
}) async {
  final out = <int, SimIconThemeColors>{};

  // Migrate legacy single-color key → fill style for every index.
  final legacy = prefs.getInt(kSimIconColorKey);
  if (legacy != null) {
    final light = Color(legacy);
    final dark = darkenSimIconColor(light);
    var wroteAny = false;
    for (var i = 0; i <= maxIndex; i++) {
      final hasLight = prefs.containsKey(simIconColorLightKey(i));
      final hasDark = prefs.containsKey(simIconColorDarkKey(i));
      final hasStyle = prefs.containsKey(simIconStyleKey(i));
      if (!hasLight && !hasDark && !hasStyle) {
        await prefs.setString(simIconStyleKey(i), 'fill');
        await prefs.setInt(simIconColorLightKey(i), colorToArgb32(light));
        await prefs.setInt(simIconColorDarkKey(i), colorToArgb32(dark));
        wroteAny = true;
      }
    }
    if (wroteAny) {
      await prefs.remove(kSimIconColorKey);
    }
  }

  for (var i = 0; i <= maxIndex; i++) {
    final lightArgb = prefs.getInt(simIconColorLightKey(i));
    final darkArgb = prefs.getInt(simIconColorDarkKey(i));
    var style = parseSimIconBadgeStyle(prefs.getString(simIconStyleKey(i)));
    // Colors saved before style existed → treat as fill.
    if (style == null && (lightArgb != null || darkArgb != null)) {
      style = SimIconBadgeStyle.fill;
      await prefs.setString(simIconStyleKey(i), 'fill');
    }
    if (style == null && lightArgb == null && darkArgb == null) continue;
    out[i] = SimIconThemeColors(
      style: style,
      light: lightArgb != null ? Color(lightArgb) : null,
      dark: darkArgb != null ? Color(darkArgb) : null,
    );
  }
  return out;
}

Future<void> saveSimIconColor({
  required SharedPreferences prefs,
  required int index,
  required bool isDark,
  required Color? color,
}) async {
  final key = isDark ? simIconColorDarkKey(index) : simIconColorLightKey(index);
  if (color == null) {
    await prefs.remove(key);
  } else {
    await prefs.setInt(key, colorToArgb32(color));
  }
}

Future<void> saveSimIconStyle({
  required SharedPreferences prefs,
  required int index,
  required SimIconBadgeStyle? style,
}) async {
  final key = simIconStyleKey(index);
  final encoded = encodeSimIconBadgeStyle(style);
  if (encoded == null) {
    await prefs.remove(key);
  } else {
    await prefs.setString(key, encoded);
  }
}

Future<void> clearSimIconCustomization({
  required SharedPreferences prefs,
  required int index,
}) async {
  await prefs.remove(simIconStyleKey(index));
  await prefs.remove(simIconColorLightKey(index));
  await prefs.remove(simIconColorDarkKey(index));
}

List<SimCardInfo> parseSimCards(List<dynamic>? raw) {
  if (raw == null) return const [];
  final out = <SimCardInfo>[];
  for (var i = 0; i < raw.length; i++) {
    final m = Map<dynamic, dynamic>.from(raw[i] as Map);
    final index = (m['index'] as num?)?.toInt() ?? i;
    final slot = (m['slot'] as num?)?.toInt() ?? (index + 1);
    final label = (m['label'] as String?)?.trim();
    out.add(
      SimCardInfo(
        index: index,
        label: (label == null || label.isEmpty) ? 'SIM $slot' : label,
        slot: slot,
      ),
    );
  }
  return out;
}
