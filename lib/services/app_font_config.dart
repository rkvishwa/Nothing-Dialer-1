import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'app_fonts.dart';

const String kFontConfigPrefKey = 'font_config';

enum DialerFontChoice { system, ndot, serif, noto }

enum DialerFontApplyMode { entireApp, titlesOnly, customize }

enum DialerFontSurface {
  recents,
  contacts,
  settings,
  dialpad,
  shell,
  defaultDialer,
  favourites,
  blocked,
  contactDetail,
  callHistory,
  sheets,
  inCall,
}

enum DialerFontRole {
  pageTitle,
  sectionHeader,
  primary,
  secondary,
  button,
  dialKey,
}

DialerFontChoice dialerFontChoiceFromString(String? raw) {
  switch (raw) {
    case 'ndot':
      return DialerFontChoice.ndot;
    case 'serif':
    case 'inter':
      return DialerFontChoice.serif;
    case 'noto':
      return DialerFontChoice.noto;
    default:
      return DialerFontChoice.system;
  }
}

String dialerFontChoiceToString(DialerFontChoice c) {
  switch (c) {
    case DialerFontChoice.system:
      return 'system';
    case DialerFontChoice.ndot:
      return 'ndot';
    case DialerFontChoice.serif:
      return 'serif';
    case DialerFontChoice.noto:
      return 'noto';
  }
}

DialerFontApplyMode dialerFontApplyModeFromString(String? raw) {
  switch (raw) {
    case 'titles_only':
      return DialerFontApplyMode.titlesOnly;
    case 'customize':
      return DialerFontApplyMode.customize;
    default:
      return DialerFontApplyMode.titlesOnly;
  }
}

String dialerFontApplyModeToString(DialerFontApplyMode m) {
  switch (m) {
    case DialerFontApplyMode.entireApp:
      return 'entire_app';
    case DialerFontApplyMode.titlesOnly:
      return 'titles_only';
    case DialerFontApplyMode.customize:
      return 'customize';
  }
}

DialerFontSurface? _surfaceFromName(String name) {
  for (final s in DialerFontSurface.values) {
    if (s.name == name) return s;
  }
  return null;
}

DialerFontRole? _roleFromName(String name) {
  for (final r in DialerFontRole.values) {
    if (r.name == name) return r;
  }
  return null;
}

class AppFontConfig {
  const AppFontConfig({
    this.defaultChoice = DialerFontChoice.system,
    this.applyMode = DialerFontApplyMode.titlesOnly,
    Map<DialerFontSurface, Map<DialerFontRole, DialerFontChoice>>? custom,
  }) : custom = custom ?? const {};

  final DialerFontChoice defaultChoice;
  final DialerFontApplyMode applyMode;
  final Map<DialerFontSurface, Map<DialerFontRole, DialerFontChoice>> custom;

  static const AppFontConfig defaults = AppFontConfig();

  AppFontConfig copyWith({
    DialerFontChoice? defaultChoice,
    DialerFontApplyMode? applyMode,
    Map<DialerFontSurface, Map<DialerFontRole, DialerFontChoice>>? custom,
  }) {
    return AppFontConfig(
      defaultChoice: defaultChoice ?? this.defaultChoice,
      applyMode: applyMode ?? this.applyMode,
      custom: custom ?? this.custom,
    );
  }

  DialerFontChoice choiceFor(DialerFontSurface surface, DialerFontRole role) {
    switch (applyMode) {
      case DialerFontApplyMode.entireApp:
        return defaultChoice;
      case DialerFontApplyMode.titlesOnly:
        if (role == DialerFontRole.pageTitle ||
            role == DialerFontRole.sectionHeader) {
          return defaultChoice;
        }
        return DialerFontChoice.system;
      case DialerFontApplyMode.customize:
        final surfaceMap = custom[surface];
        if (surfaceMap != null) {
          final cell = surfaceMap[role];
          if (cell != null) return cell;
        }
        return defaultChoice;
    }
  }

  String? familyFor(DialerFontSurface surface, DialerFontRole role) {
    return fontFamilyForChoice(choiceFor(surface, role), role: role);
  }

  Map<String, dynamic> toJson() {
    final customJson = <String, dynamic>{};
    for (final e in custom.entries) {
      final roleMap = <String, String>{};
      for (final r in e.value.entries) {
        roleMap[r.key.name] = dialerFontChoiceToString(r.value);
      }
      customJson[e.key.name] = roleMap;
    }
    return {
      'v': 1,
      'defaultChoice': dialerFontChoiceToString(defaultChoice),
      'applyMode': dialerFontApplyModeToString(applyMode),
      'custom': customJson,
    };
  }

  static AppFontConfig fromJson(Map<String, dynamic> json) {
    final customRaw = json['custom'];
    final custom = <DialerFontSurface, Map<DialerFontRole, DialerFontChoice>>{};
    if (customRaw is Map) {
      for (final surfaceEntry in customRaw.entries) {
        final surface = _surfaceFromName(surfaceEntry.key.toString());
        if (surface == null) continue;
        final roleMap = <DialerFontRole, DialerFontChoice>{};
        if (surfaceEntry.value is Map) {
          for (final roleEntry in (surfaceEntry.value as Map).entries) {
            final role = _roleFromName(roleEntry.key.toString());
            if (role == null) continue;
            roleMap[role] =
                dialerFontChoiceFromString(roleEntry.value?.toString());
          }
        }
        if (roleMap.isNotEmpty) custom[surface] = roleMap;
      }
    }
    return AppFontConfig(
      defaultChoice: dialerFontChoiceFromString(json['defaultChoice']?.toString()),
      applyMode: dialerFontApplyModeFromString(json['applyMode']?.toString()),
      custom: custom,
    );
  }

  static AppFontConfig fromPrefString(String? raw) {
    if (raw == null || raw.isEmpty) return defaults;
    try {
      final decoded = jsonDecode(raw);
      if (decoded is Map<String, dynamic>) return fromJson(decoded);
      if (decoded is Map) return fromJson(Map<String, dynamic>.from(decoded));
    } catch (_) {}
    return defaults;
  }

  String encodeForPrefs() => jsonEncode(toJson());
}

Future<AppFontConfig> loadFontConfigFromPrefs([SharedPreferences? prefs]) async {
  final p = prefs ?? await SharedPreferences.getInstance();
  return AppFontConfig.fromPrefString(p.getString(kFontConfigPrefKey));
}

Future<void> saveFontConfigToPrefs(AppFontConfig config) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString(kFontConfigPrefKey, config.encodeForPrefs());
}
