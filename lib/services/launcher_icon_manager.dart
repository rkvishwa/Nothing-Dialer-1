import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String kLauncherIconPrefsKey = 'launcher_icon_variant';

/// Launcher icon variants (Android activity-alias). Ids must match [LauncherIconManager] on Android.
@immutable
class LauncherIconVariant {
  const LauncherIconVariant({
    required this.id,
    required this.label,
    required this.previewBackground,
    required this.previewAsset,
  });

  final String id;
  final String label;

  /// Shown behind [previewAsset] while loading / as tile padding.
  final Color previewBackground;

  /// Full launcher art (same files used by flutter_launcher_icons for each variant).
  final String previewAsset;

  static const classic = LauncherIconVariant(
    id: 'default',
    label: 'Classic (black)',
    previewBackground: Color(0xFF000000),
    previewAsset: 'assets/app_icon.png',
  );

  static const light = LauncherIconVariant(
    id: 'light',
    label: 'Light',
    previewBackground: Color(0xFFFFFFFF),
    previewAsset: 'assets/launcher/app_icon_light.png',
  );

  static const red = LauncherIconVariant(
    id: 'red',
    label: 'Nothing red',
    previewBackground: Color(0xFFD81A1A),
    previewAsset: 'assets/launcher/app_icon_red.png',
  );

  static const grey = LauncherIconVariant(
    id: 'grey',
    label: 'Dark grey',
    previewBackground: Color(0xFF1A1A1A),
    previewAsset: 'assets/launcher/app_icon_grey.png',
  );

  static const cream = LauncherIconVariant(
    id: 'cream',
    label: 'Cream',
    previewBackground: Color(0xFFF5F1E8),
    previewAsset: 'assets/launcher/app_icon_cream.png',
  );

  static const oldPhone = LauncherIconVariant(
    id: 'old_phone',
    label: 'Retro phone',
    previewBackground: Color(0xFF000000),
    previewAsset: 'assets/launcher/app_icon_old_phone.png',
  );

  static const oldPhoneLight = LauncherIconVariant(
    id: 'old_phone_light',
    label: 'Retro phone (light)',
    previewBackground: Color(0xFFFFFFFF),
    previewAsset: 'assets/launcher/app_icon_old_phone_light.png',
  );

  static const List<LauncherIconVariant> all = [
    classic,
    light,
    red,
    grey,
    cream,
    oldPhone,
    oldPhoneLight,
  ];

  static LauncherIconVariant fromId(String id) {
    for (final v in all) {
      if (v.id == id) return v;
    }
    return classic;
  }
}

class LauncherIconManager {
  LauncherIconManager._();

  static const MethodChannel _channel = MethodChannel('nothing_dialer/control');

  static bool get _isAndroid => !kIsWeb && Platform.isAndroid;

  /// Resolves current variant: native when available, else [SharedPreferences].
  static Future<String> getCurrentId() async {
    if (_isAndroid) {
      try {
        final native = await _channel.invokeMethod<String>('getLauncherIcon');
        if (native != null && native.isNotEmpty) {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString(kLauncherIconPrefsKey, native);
          return native;
        }
      } catch (_) {
        // Fall through to prefs.
      }
    }
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(kLauncherIconPrefsKey) ?? LauncherIconVariant.classic.id;
  }

  /// Persists [variant] and updates the launcher icon when this build ships activity-alias entries.
  /// Returns whether the native launcher components were updated (false on debug/profile).
  static Future<bool> setVariant(LauncherIconVariant variant) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(kLauncherIconPrefsKey, variant.id);
    if (!_isAndroid) return false;
    final applied = await _channel.invokeMethod<bool>('setLauncherIcon', <String, dynamic>{
      'id': variant.id,
    });
    return applied ?? false;
  }
}
