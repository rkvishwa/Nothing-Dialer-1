import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'app_font_config.dart';
import 'noto_font_pack.dart';

/// Ndot 55 Caps — page titles and section headers when NDot is selected.
const String kNdotCapsFontFamily = 'NDot55Caps';

/// Ndot 55 Regular — body and other roles when NDot is selected.
const String kNdotRegularFontFamily = 'NDot55Regular';

/// Flutter [fontFamily] for bundled Roboto Serif.
const String kSerifFontFamily = 'RobotoSerif';

/// Asset paths under `assets/` (also used from Android via flutter_assets).
const String kNdotCapsFontAsset = 'assets/fonts/Ndot55Caps-Regular.otf';
const String kNdotRegularFontAsset = 'assets/fonts/Ndot55-Regular.otf';
const String kSerifRegularAsset = 'assets/fonts/RobotoSerif-Regular.ttf';
const String kSerifMediumAsset = 'assets/fonts/RobotoSerif-Medium.ttf';
const String kSerifSemiBoldAsset = 'assets/fonts/RobotoSerif-SemiBold.ttf';

bool isNdotTitleRole(DialerFontRole role) {
  return role == DialerFontRole.pageTitle ||
      role == DialerFontRole.sectionHeader;
}

DialerFontChoice dialerChoiceForFamily(String? family) {
  if (family == null) return DialerFontChoice.system;
  if (family == kSerifFontFamily) return DialerFontChoice.serif;
  if (family == kNotoFontFamily || family == 'Noto Sans') {
    return DialerFontChoice.noto;
  }
  if (family == kNdotCapsFontFamily || family == kNdotRegularFontFamily) {
    return DialerFontChoice.ndot;
  }
  return DialerFontChoice.system;
}

String? fontFamilyForChoice(
  DialerFontChoice choice, {
  DialerFontRole? role,
}) {
  switch (choice) {
    case DialerFontChoice.system:
      return null;
    case DialerFontChoice.ndot:
      if (role != null && isNdotTitleRole(role)) {
        return kNdotCapsFontFamily;
      }
      return kNdotRegularFontFamily;
    case DialerFontChoice.serif:
      return kSerifFontFamily;
    case DialerFontChoice.noto:
      return kNotoFontFamily;
  }
}

/// System fallbacks so Indic / CJK / Arabic glyphs still render when Ndot/Serif
/// do not include those scripts (e.g. Tamil after a language switch).
const List<String> kDialerFontFamilyFallbacks = <String>[
  'Roboto',
  'Noto Sans',
  'sans-serif',
];

List<String>? fontFamilyFallbacksForChoice(DialerFontChoice choice) {
  switch (choice) {
    case DialerFontChoice.system:
      return null;
    case DialerFontChoice.ndot:
    case DialerFontChoice.serif:
      return NotoFontPack.ready.value
          ? NotoFontPack.fallbackFamilies
          : kDialerFontFamilyFallbacks;
    case DialerFontChoice.noto:
      return NotoFontPack.fallbackFamilies;
  }
}

/// Platform UI font for font-picker previews (not used for in-app system text).
String platformDefaultUIFontFamily() {
  switch (defaultTargetPlatform) {
    case TargetPlatform.iOS:
    case TargetPlatform.macOS:
      return '.AppleSystemUIFont';
    case TargetPlatform.android:
    case TargetPlatform.fuchsia:
    case TargetPlatform.linux:
    case TargetPlatform.windows:
      return 'Roboto';
  }
}

/// Picker labels / chips: always show [choice]'s typeface, not the active app font.
TextStyle previewTextStyleForChoice(
  DialerFontChoice choice,
  TextStyle base, {
  DialerFontRole? role,
}) {
  switch (choice) {
    case DialerFontChoice.system:
      return base.copyWith(
        inherit: false,
        fontFamily: platformDefaultUIFontFamily(),
        fontFamilyFallback: const ['sans-serif'],
      );
    case DialerFontChoice.noto:
    case DialerFontChoice.ndot:
    case DialerFontChoice.serif:
      return applyDialerFontChoice(
        choice,
        base.copyWith(inherit: false),
        role: role,
      ).copyWith(inherit: false);
  }
}

/// Applies the selected dialer font (including downloaded Noto) onto [base].
TextStyle applyDialerFontChoice(
  DialerFontChoice choice,
  TextStyle base, {
  DialerFontRole? role,
}) {
  switch (choice) {
    case DialerFontChoice.system:
      // Explicit family so customize→system can override a parent Theme font.
      return base.copyWith(
        fontFamily: platformDefaultUIFontFamily(),
        fontFamilyFallback: const ['sans-serif'],
      );
    case DialerFontChoice.noto:
      return NotoFontPack.textStyle(base: base);
    case DialerFontChoice.ndot:
    case DialerFontChoice.serif:
      return base.copyWith(
        fontFamily: fontFamilyForChoice(choice, role: role),
        fontFamilyFallback: fontFamilyFallbacksForChoice(choice),
      );
  }
}

/// Resolves persisted / legacy choice ids (`inter` → serif).
DialerFontChoice normalizeFontChoiceId(String? raw) {
  if (raw == 'inter') return DialerFontChoice.serif;
  return dialerFontChoiceFromString(raw);
}

/// Default bundled asset for a choice (regular weight); null for system.
String? assetPathForChoice(
  DialerFontChoice choice, {
  FontWeight? weight,
  DialerFontRole? role,
}) {
  switch (choice) {
    case DialerFontChoice.system:
      return null;
    case DialerFontChoice.ndot:
      if (role != null && isNdotTitleRole(role)) {
        return kNdotCapsFontAsset;
      }
      return kNdotRegularFontAsset;
    case DialerFontChoice.serif:
      final w = weight ?? FontWeight.w400;
      if (w.value >= FontWeight.w600.value) return kSerifSemiBoldAsset;
      if (w.value >= FontWeight.w500.value) return kSerifMediumAsset;
      return kSerifRegularAsset;
    case DialerFontChoice.noto:
      // Downloaded via google_fonts; no bundled asset path.
      return null;
  }
}

/// Legacy Android / prefs choice string → asset path.
String? assetPathForChoiceId(
  String choiceId, {
  FontWeight? weight,
  DialerFontRole? role,
}) {
  return assetPathForChoice(
    normalizeFontChoiceId(choiceId),
    weight: weight,
    role: role,
  );
}

/// Picker / dropdown: render [child] in the typeface for [choice], ignoring app font scope.
Widget fontChoicePreviewScope({
  required DialerFontChoice choice,
  required TextStyle baseStyle,
  required Widget child,
  DialerFontRole previewRole = DialerFontRole.primary,
}) {
  final style = previewTextStyleForChoice(
    choice,
    baseStyle,
    role: previewRole,
  );
  return DefaultTextStyle(
    style: style,
    child: child,
  );
}

TextTheme buildDialerTextTheme({
  required AppFontConfig config,
  required ColorScheme colorScheme,
  required TextTheme base,
  DialerFontSurface surface = DialerFontSurface.shell,
}) {
  TextStyle apply(TextStyle? style, {required DialerFontRole role}) {
    final s = style ?? const TextStyle();
    final colored = s.copyWith(color: s.color ?? colorScheme.onSurface);
    final choice = config.choiceFor(surface, role);
    return applyDialerFontChoice(choice, colored, role: role);
  }

  return base.copyWith(
    displayLarge: apply(base.displayLarge, role: DialerFontRole.pageTitle),
    displayMedium: apply(base.displayMedium, role: DialerFontRole.pageTitle),
    displaySmall: apply(base.displaySmall, role: DialerFontRole.pageTitle),
    headlineLarge: apply(base.headlineLarge, role: DialerFontRole.pageTitle),
    headlineMedium: apply(base.headlineMedium, role: DialerFontRole.pageTitle),
    headlineSmall: apply(base.headlineSmall, role: DialerFontRole.pageTitle),
    titleLarge: apply(base.titleLarge, role: DialerFontRole.pageTitle),
    titleMedium: apply(base.titleMedium, role: DialerFontRole.sectionHeader),
    titleSmall: apply(base.titleSmall, role: DialerFontRole.sectionHeader),
    bodyLarge: apply(base.bodyLarge, role: DialerFontRole.primary),
    bodyMedium: apply(base.bodyMedium, role: DialerFontRole.primary),
    bodySmall: apply(base.bodySmall, role: DialerFontRole.secondary),
    labelLarge: apply(base.labelLarge, role: DialerFontRole.button),
    labelMedium: apply(base.labelMedium, role: DialerFontRole.button),
    labelSmall: apply(base.labelSmall, role: DialerFontRole.secondary),
  );
}
