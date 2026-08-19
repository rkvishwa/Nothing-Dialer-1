import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart' as main_app;
import 'app_font_config.dart';
import 'call_display_prefs.dart';
import 'app_locale.dart';
import 'contact_photo_style.dart';
import 'launcher_icon_manager.dart';
import 'sim_icon_colors.dart';
import 'theme_colors.dart';

const _defaultGlyphStyle = 'Breath & Progress';
const _defaultGlyphChannels = ['A1', 'B1', 'C-All', 'D-All', 'E1'];

/// Clears appearance, language, call behaviour, glyph, and frequent-contact prefs.
/// Does not touch default SIM, blocked numbers, recents, or favourites.
Future<void> resetAppearanceCustomizationToDefaults({
  Iterable<int> simIndices = const [0, 1, 2, 3],
}) async {
  final prefs = await SharedPreferences.getInstance();

  await prefs.remove('theme_mode');
  await prefs.remove('light_bg_color');
  await prefs.remove('dark_bg_color');
  await prefs.remove('light_accent_color');
  await prefs.remove('dark_accent_color');
  await prefs.remove('call_bg_color');
  await prefs.remove(kFontConfigPrefKey);
  await prefs.remove(kAppLocalePrefKey);

  await prefs.remove('answer_method');

  await clearCallDisplaySettingsPrefs(prefs);

  await prefs.remove(kContactPhotoModePrefKey);
  await prefs.remove(kContactAvatarShapePrefKey);
  await prefs.remove(kContactAvatarStylePrefKey);
  await prefs.remove(kRecentsShowContactPhotosPrefKey);
  await prefs.remove(kRecentsContactAvatarShapePrefKey);
  await prefs.remove(kRecentsContactAvatarStylePrefKey);

  await prefs.remove('frequent_contacts_period');
  await prefs.remove('frequent_contacts_max');
  await prefs.remove('frequent_contacts_enabled');

  await prefs.remove('glyph_animation_style');
  await prefs.remove('glyph_custom_interval');
  await prefs.remove('glyph_c1c4_interval');
  await prefs.remove('glyph_custom_channels');
  await prefs.remove('glyph_breath_progress_duration');
  await prefs.remove('glyph_breath_progress_interval');
  await prefs.remove('in_call_animation_style');
  await prefs.remove('in_call_custom_interval');
  await prefs.remove('in_call_c1c4_interval');
  await prefs.remove('in_call_custom_channels');
  await prefs.remove('in_call_breath_progress_duration');
  await prefs.remove('in_call_breath_progress_interval');

  await prefs.remove('torch_incoming_mode');
  await prefs.remove('torch_incoming_interval');
  await prefs.remove('torch_outgoing_mode');
  await prefs.remove('torch_outgoing_interval');
  await prefs.remove('torch_ongoing_mode');
  await prefs.remove('torch_ongoing_interval');

  final indexSet = {...simIndices, 0, 1, 2, 3};
  await prefs.remove(kSimIconColorKey);
  for (final i in indexSet) {
    await clearSimIconCustomization(prefs: prefs, index: i);
  }

  await LauncherIconManager.setVariant(LauncherIconVariant.classic);

  main_app.themeModeNotifier.value = 'system';
  main_app.lightBgColorNotifier.value = kDefaultLightBg;
  main_app.darkBgColorNotifier.value = kDefaultDarkBg;
  main_app.lightAccentColorNotifier.value = kDefaultLightAccent;
  main_app.darkAccentColorNotifier.value = kDefaultDarkAccent;
  main_app.fontConfigNotifier.value = AppFontConfig.defaults;
  main_app.localeNotifier.value = kAppLocaleSystem;
  main_app.contactPhotoModeNotifier.value = kDefaultContactPhotoMode;
  main_app.contactAvatarShapeNotifier.value = kDefaultContactAvatarShape;
  main_app.contactAvatarStyleNotifier.value = kDefaultContactAvatarStyle;
  main_app.recentsShowContactPhotosNotifier.value =
      kDefaultRecentsShowContactPhotos;
  main_app.recentsContactAvatarShapeNotifier.value =
      kDefaultRecentsContactAvatarShape;
  main_app.recentsContactAvatarStyleNotifier.value =
      kDefaultRecentsContactAvatarStyle;

  main_app.frequentContactsPeriodNotifier.value = 'year';
  main_app.frequentContactsMaxNotifier.value = 5;

  main_app.glyphAnimationStyleNotifier.value = _defaultGlyphStyle;
  main_app.glyphC1C4IntervalNotifier.value = 1000;
  main_app.glyphCustomIntervalNotifier.value = 1500;
  main_app.glyphCustomChannelsNotifier.value = List<String>.from(
    _defaultGlyphChannels,
  );
  main_app.glyphBreathProgressDurationNotifier.value = 65000;
  main_app.glyphBreathProgressIntervalNotifier.value = 100;

  main_app.inCallAnimationStyleNotifier.value = _defaultGlyphStyle;
  main_app.inCallC1C4IntervalNotifier.value = 1000;
  main_app.inCallCustomIntervalNotifier.value = 1500;
  main_app.inCallCustomChannelsNotifier.value = List<String>.from(
    _defaultGlyphChannels,
  );
  main_app.inCallBreathProgressDurationNotifier.value = 65000;
  main_app.inCallBreathProgressIntervalNotifier.value = 100;

  main_app.torchIncomingModeNotifier.value = 'off';
  main_app.torchIncomingIntervalNotifier.value = 500;
  main_app.torchOutgoingModeNotifier.value = 'off';
  main_app.torchOutgoingIntervalNotifier.value = 500;
  main_app.torchOngoingModeNotifier.value = 'off';
  main_app.torchOngoingIntervalNotifier.value = 500;

  final simState = main_app.simIconColorsNotifier.value;
  main_app.simIconColorsNotifier.value = SimIconColorsState(
    byIndex: const {},
    sims: simState.sims,
  );

  try {
    await const MethodChannel(
      'nothing_dialer/control',
    ).invokeMethod<void>('notifyAnswerMethodChanged');
  } on PlatformException {
    // Native call UI may not be active.
  }
}
