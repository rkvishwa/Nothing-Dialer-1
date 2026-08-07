import 'package:flutter/material.dart';
import 'package:flutter_localized_locales/native_locale_names.dart';
import 'package:nothing_dialer/l10n/app_localizations.dart';

/// SharedPreferences key for app language override.
const String kAppLocalePrefKey = 'app_locale';

/// Stored value meaning follow the device locale.
const String kAppLocaleSystem = 'system';

/// Locales offered in Settings (native CLDR names, app-supported only).
List<Locale> get kAppLanguagePickerLocales {
  final tags = AppLocalizations.supportedLocales
      .map(prefTagFromLocale)
      .toSet()
      .toList()
    ..sort((a, b) {
      final na = nativeLanguageName(a);
      final nb = nativeLanguageName(b);
      return na.compareTo(nb);
    });
  return tags.map(_localeFromTag).toList();
}

Locale? localeFromPref(String? stored) {
  if (stored == null || stored.isEmpty || stored == kAppLocaleSystem) {
    return null;
  }
  return _localeFromTag(stored);
}

/// Maps device or stored locale to the nearest [AppLocalizations.supportedLocales] entry.
Locale resolveSupportedAppLocale(Locale locale) {
  final supported = AppLocalizations.supportedLocales;

  bool same(Locale a, Locale b) =>
      a.languageCode == b.languageCode &&
      (a.countryCode ?? '') == (b.countryCode ?? '');

  for (final s in supported) {
    if (same(s, locale)) return s;
  }

  Locale? languageFallback;
  for (final s in supported) {
    if (s.languageCode != locale.languageCode) continue;
    if (s.countryCode == null || s.countryCode!.isEmpty) {
      return s;
    }
    languageFallback ??= s;
  }
  if (languageFallback != null) return languageFallback;

  return const Locale('en');
}

/// Rewrites unsupported stored tags (e.g. CLDR script variants) to a supported pref value.
String normalizeLocalePref(String? stored) {
  if (stored == null || stored.isEmpty || stored == kAppLocaleSystem) {
    return kAppLocaleSystem;
  }
  final raw = localeFromPref(stored);
  if (raw == null) return kAppLocaleSystem;
  final resolved = resolveSupportedAppLocale(raw);
  if (sameLocale(raw, resolved)) return stored;
  return prefTagFromLocale(resolved);
}

bool sameLocale(Locale a, Locale b) =>
    a.languageCode == b.languageCode &&
    (a.countryCode ?? '') == (b.countryCode ?? '');

String prefTagFromLocale(Locale locale) {
  if (locale.countryCode == null || locale.countryCode!.isEmpty) {
    return locale.languageCode;
  }
  return '${locale.languageCode}_${locale.countryCode}';
}

Locale _localeFromTag(String tag) {
  final normalized = tag.replaceAll('-', '_');
  final parts = normalized.split('_');
  if (parts.length >= 2) {
    return Locale(parts[0], parts[1]);
  }
  return Locale(parts[0]);
}

/// Native display name for a locale tag (falls back to tag).
String nativeLanguageName(String tag) => all_native_names[tag] ?? tag;

String nativeLanguageNameForLocale(Locale locale) =>
    nativeLanguageName(prefTagFromLocale(locale));
