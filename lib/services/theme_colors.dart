import 'dart:math' as math;

import 'package:flutter/material.dart';

/// Default backgrounds when no preference is stored.
const Color kDefaultLightBg = Color(0xFFFFFFFF);
const Color kDefaultDarkBg = Color(0xFF000000);

const List<Color> kLightPresets = [
  kDefaultLightBg,
  Color(0xFFF3F3F3),
  Color(0xFFFFF8E7),
  Color(0xFFE8E8E8),
  Color(0xFFE3F2FD),
];

const List<Color> kDarkPresets = [
  kDefaultDarkBg,
  Color(0xFF0D0D0D),
  Color(0xFF1C1C1E),
  Color(0xFF0A1929),
  Color(0xFF1A0E2E),
];

/// In-call screen background (native [InCallActivity]); pitch black by default.
const Color kDefaultCallBg = Color(0xFF000000);

const List<Color> kCallBgPresets = [
  kDefaultCallBg,
  Color(0xFF0D0D0D),
  Color(0xFF141218),
  Color(0xFF0A1929),
  Color(0xFF1A0E2E),
];

/// Default accent when no preference is stored.
const Color kDefaultLightAccent = Color(0xFF1C1B1F);
const Color kDefaultDarkAccent = Color(0xFFE8E8E8);

/// Five accent presets (same for light and dark appearance).
const List<Color> kAccentPresets = [
  Color(0xFFFFFFFF),
  Color(0xFFE53935),
  Color(0xFF43A047),
  Color(0xFF1E88E5),
  Color(0xFF8E24AA),
];

/// Legacy single SIM badge color key (migrated in [sim_icon_colors.dart]).
const String kSimIconColorKey = 'sim_icon_color';

const double _lightMinL = 0.85;
const double _darkMaxL = 0.12;

/// ARGB for SharedPreferences (same encoding as [Color] constructor).
int colorToArgb32(Color c) => c.toARGB32();

class _Rgb {
  const _Rgb(this.r, this.g, this.b);
  final double r;
  final double g;
  final double b;
}

class _Hsl {
  const _Hsl(this.h, this.s, this.l);
  final double h;
  final double s;
  final double l;
}

_Rgb _colorToRgb(Color c) {
  return _Rgb(c.r, c.g, c.b);
}

_Hsl _rgbToHsl(_Rgb rgb) {
  final maxC = math.max(rgb.r, math.max(rgb.g, rgb.b));
  final minC = math.min(rgb.r, math.min(rgb.g, rgb.b));
  final l = (maxC + minC) / 2;
  double h = 0;
  double s = 0;

  if (maxC != minC) {
    final d = maxC - minC;
    s = l > 0.5 ? d / (2 - maxC - minC) : d / (maxC + minC);

    if (maxC == rgb.r) {
      h = (rgb.g - rgb.b) / d + (rgb.g < rgb.b ? 6 : 0);
    } else if (maxC == rgb.g) {
      h = (rgb.b - rgb.r) / d + 2;
    } else {
      h = (rgb.r - rgb.g) / d + 4;
    }
    h /= 6;
  }

  return _Hsl(h, s, l);
}

Color _hslToColor(_Hsl hsl) {
  double hue2rgb(double p, double q, double t) {
    var tt = t;
    if (tt < 0) tt += 1;
    if (tt > 1) tt -= 1;
    if (tt < 1 / 6) return p + (q - p) * 6 * tt;
    if (tt < 1 / 2) return q;
    if (tt < 2 / 3) return p + (q - p) * (2 / 3 - tt) * 6;
    return p;
  }

  final h = hsl.h;
  final s = hsl.s;
  final l = hsl.l;

  if (s == 0) {
    return Color.fromARGB(255, (l * 255).round(), (l * 255).round(), (l * 255).round());
  }

  final q = l < 0.5 ? l * (1 + s) : l + s - l * s;
  final p = 2 * l - q;
  final r = hue2rgb(p, q, h + 1 / 3);
  final g = hue2rgb(p, q, h);
  final b = hue2rgb(p, q, h - 1 / 3);

  return Color.fromARGB(
    255,
    (r * 255).clamp(0, 255).round(),
    (g * 255).clamp(0, 255).round(),
    (b * 255).clamp(0, 255).round(),
  );
}

/// Forces a light-theme-safe background (high lightness).
Color clampToLight(Color c) {
  final rgb = _colorToRgb(c);
  final hsl = _rgbToHsl(rgb);
  final l = math.max(hsl.l, _lightMinL).clamp(0.0, 1.0);
  return _hslToColor(_Hsl(hsl.h, hsl.s, l));
}

/// Forces a dark-theme-safe background (low lightness).
Color clampToDark(Color c) {
  final rgb = _colorToRgb(c);
  final hsl = _rgbToHsl(rgb);
  final l = math.min(hsl.l, _darkMaxL).clamp(0.0, 1.0);
  return _hslToColor(_Hsl(hsl.h, hsl.s, l));
}

/// Contrasting text/icon on a solid [accent] fill (buttons, FAB, etc.).
Color contentOnAccent(Color accent) {
  return accent.computeLuminance() > 0.45
      ? const Color(0xFF1C1B1F)
      : Colors.white;
}

/// Material 3 palette harmonized to [accent] with [background] as surface.
///
/// Drives [ColorScheme.onSurface], [onSurfaceVariant], outlines, and
/// surface containers so list titles, icons, and profile-style UI follow
/// the user's accent instead of static M2 neutrals.
ColorScheme buildColorSchemeForDialer({
  required Color background,
  required Color accent,
  required Brightness brightness,
}) {
  final base = ColorScheme.fromSeed(
    seedColor: accent,
    brightness: brightness,
    surface: background,
  );
  return base.copyWith(
    primary: accent,
    onPrimary: contentOnAccent(accent),
  );
}

/// True if [a] and [b] are the same after ARGB rounding.
bool colorsEqual(Color a, Color b) => a.toARGB32() == b.toARGB32();
