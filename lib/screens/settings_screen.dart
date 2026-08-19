import 'dart:async';
import 'dart:io' show Platform;

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'blocked_numbers_screen.dart';
import 'favourites_screen.dart';
import 'sim_picker_sheet.dart';
import '../main.dart' as main_app;
import '../services/launcher_icon_manager.dart';
import 'icon_picker_screen.dart';
import '../services/theme_colors.dart';
import '../services/sim_icon_colors.dart';
import 'package:nothing_dialer/l10n/app_localizations.dart';
import 'font_settings_sheet.dart';
import 'sim_icon_colors_sheet.dart';
import '../extensions/dialer_text_style.dart';
import '../services/app_font_config.dart';
import '../widgets/dialer_font_scope.dart';
import '../services/l10n_format.dart';
import '../services/app_locale.dart';
import 'language_picker_sheet.dart';
import '../widgets/settings_picker_sheet.dart';
import '../widgets/ongoing_call_banner.dart';
import 'package:url_launcher/url_launcher.dart';
import '../services/play_store_review.dart';
import '../services/appearance_reset.dart';
import '../services/call_display_prefs.dart';
import '../services/contact_photo_style.dart';
import 'call_display_settings_sheet.dart';
import 'contact_photo_settings_sheet.dart';

enum _ColorSlot { background, accent }

const _kRepositoryUrl = 'https://github.com/rkvishwa/Nothing-Dialer-1';
int _readFrequentContactsMaxFromPrefs(SharedPreferences prefs) {
  final stored = prefs.getInt('frequent_contacts_max');
  if (stored != null) return stored.clamp(0, 20);
  if (prefs.getBool('frequent_contacts_enabled') == false) return 0;
  return 5;
}

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen>
    with WidgetsBindingObserver {
  String _answerMethod = 'slide'; // 'slide' | 'button' | 'huawei'
  String _themeMode = 'system'; // 'system', 'light', 'dark'
  Color _lightBgColor = kDefaultLightBg;
  Color _darkBgColor = kDefaultDarkBg;
  Color _lightAccentColor = kDefaultLightAccent;
  Color _darkAccentColor = kDefaultDarkAccent;
  Color _callBgColor = kDefaultCallBg;
  ContactPhotoMode _contactPhotoMode = kDefaultContactPhotoMode;
  ContactAvatarShape _contactAvatarShape = kDefaultContactAvatarShape;
  ContactAvatarStyle _contactAvatarStyle = kDefaultContactAvatarStyle;
  bool _recentsShowContactPhotos = kDefaultRecentsShowContactPhotos;
  ContactAvatarShape _recentsContactAvatarShape =
      kDefaultRecentsContactAvatarShape;
  ContactAvatarStyle _recentsContactAvatarStyle =
      kDefaultRecentsContactAvatarStyle;

  String _glyphAnimationStyle = 'Breath & Progress';
  int _customInterval = 1500;
  int _glyphC1C4Interval = 1000;
  List<String> _customChannels = ['A1', 'B1', 'C-All', 'D-All', 'E1'];

  String _inCallAnimationStyle = 'Breath & Progress';
  int _inCallCustomInterval = 1500;
  int _inCallC1C4Interval = 1000;
  int _glyphBreathProgressDuration = 65000;
  int _glyphBreathProgressInterval = 100;
  int _inCallBreathProgressDuration = 65000;
  int _inCallBreathProgressInterval = 100;
  List<String> _inCallCustomChannels = ['A1', 'B1', 'C-All', 'D-All', 'E1'];

  String _frequentContactsPeriod = 'year';
  int _frequentContactsMax = 5;
  bool _recentsSearchShowContacts = true;

  String _defaultSimMode = kDefaultSimModeAsk;
  int? _defaultSimIndex;
  List<SimCardInfo> _simCards = const [];
  Map<int, SimIconThemeColors> _simIconColors = const {};

  bool _torchHasFlash = true;
  String _launcherIconLabel = LauncherIconVariant.classic.label;
  String _torchIncomingMode = 'off';
  int _torchIncomingInterval = 500;
  String _torchOutgoingMode = 'off';
  int _torchOutgoingInterval = 500;
  String _torchOngoingMode = 'off';
  int _torchOngoingInterval = 500;

  CallDisplaySettings _callDisplaySettings = const CallDisplaySettings();

  bool _searchOpen = false;
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _searchController.addListener(_onSearchChanged);
    _loadSettings();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      unawaited(OngoingCallBanner.syncCallStateFromNative());
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      unawaited(OngoingCallBanner.syncCallStateFromNative());
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    final next = _searchController.text;
    if (next == _searchQuery) return;
    setState(() => _searchQuery = next);
  }

  void _openSearch() {
    setState(() => _searchOpen = true);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _searchFocusNode.requestFocus();
    });
  }

  void _closeSearch() {
    _searchController.clear();
    setState(() {
      _searchOpen = false;
      _searchQuery = '';
    });
  }

  bool _settingsMatch(String query, Iterable<String> fields) {
    final q = query.trim().toLowerCase();
    if (q.isEmpty) return true;
    return fields.any((f) => f.toLowerCase().contains(q));
  }

  bool _showSettingsItem(String section, Iterable<String> fields) {
    final q = _searchQuery.trim();
    if (q.isEmpty) return true;
    if (_settingsMatch(q, [section])) return true;
    return _settingsMatch(q, fields);
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    if (_themeMode == 'system') setState(() {});
  }

  /// Which background color row to show: light slot vs dark slot.
  bool _activeAppearanceIsLight(BuildContext context) {
    if (_themeMode == 'light') return true;
    if (_themeMode == 'dark') return false;
    return MediaQuery.platformBrightnessOf(context) == Brightness.light;
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    var torchIncomingMode = prefs.getString('torch_incoming_mode') ?? 'off';
    if (torchIncomingMode != 'off' && torchIncomingMode != 'interval') {
      torchIncomingMode = 'interval';
      await prefs.setString('torch_incoming_mode', torchIncomingMode);
    }
    var torchFlash = true;
    try {
      final r = await const MethodChannel(
        'nothing_dialer/torch',
      ).invokeMethod<bool>('torchHasFlash');
      torchFlash = r ?? true;
    } catch (_) {
      torchFlash = false;
    }
    List<SimCardInfo> simCards = const [];
    try {
      final raw = await const MethodChannel(
        'nothing_dialer/control',
      ).invokeMethod<List<dynamic>>('getSimCards');
      simCards = parseSimCards(raw);
    } catch (_) {
      simCards = const [];
    }
    final simIconColors = await loadSimIconColorsFromPrefs(prefs);
    setState(() {
      _themeMode = prefs.getString('theme_mode') ?? 'system';
      _lightBgColor = Color(
        prefs.getInt('light_bg_color') ?? colorToArgb32(kDefaultLightBg),
      );
      _darkBgColor = Color(
        prefs.getInt('dark_bg_color') ?? colorToArgb32(kDefaultDarkBg),
      );
      _lightAccentColor = Color(
        prefs.getInt('light_accent_color') ??
            colorToArgb32(kDefaultLightAccent),
      );
      _darkAccentColor = Color(
        prefs.getInt('dark_accent_color') ?? colorToArgb32(kDefaultDarkAccent),
      );
      _callBgColor = Color(
        prefs.getInt('call_bg_color') ?? colorToArgb32(kDefaultCallBg),
      );
      _answerMethod = prefs.getString('answer_method') ?? 'slide';

      _glyphAnimationStyle =
          prefs.getString('glyph_animation_style') ?? 'Breath & Progress';
      _customInterval = prefs.getInt('glyph_custom_interval') ?? 1500;
      _glyphC1C4Interval = prefs.getInt('glyph_c1c4_interval') ?? 1000;
      _customChannels =
          prefs.getStringList('glyph_custom_channels') ??
          ['A1', 'B1', 'C-All', 'D-All', 'E1'];

      _inCallAnimationStyle =
          prefs.getString('in_call_animation_style') ?? 'Breath & Progress';
      _inCallCustomInterval = prefs.getInt('in_call_custom_interval') ?? 1500;
      _inCallC1C4Interval = prefs.getInt('in_call_c1c4_interval') ?? 1000;
      _glyphBreathProgressDuration =
          prefs.getInt('glyph_breath_progress_duration') ?? 65000;
      _glyphBreathProgressInterval =
          prefs.getInt('glyph_breath_progress_interval') ?? 100;
      _inCallBreathProgressDuration =
          prefs.getInt('in_call_breath_progress_duration') ?? 65000;
      _inCallBreathProgressInterval =
          prefs.getInt('in_call_breath_progress_interval') ?? 100;
      _inCallCustomChannels =
          prefs.getStringList('in_call_custom_channels') ??
          ['A1', 'B1', 'C-All', 'D-All', 'E1'];

      _frequentContactsPeriod =
          prefs.getString('frequent_contacts_period') ?? 'year';
      _frequentContactsMax = _readFrequentContactsMaxFromPrefs(prefs);
      _recentsSearchShowContacts =
          prefs.getBool('recents_search_show_contacts') ?? true;

      _defaultSimMode =
          prefs.getString(kDefaultSimModeKey) ?? kDefaultSimModeAsk;
      _defaultSimIndex = prefs.getInt(kDefaultSimIndexKey);
      _simCards = simCards;
      _simIconColors = simIconColors;
      _callDisplaySettings = loadCallDisplaySettingsFromPrefs(prefs);
      _contactPhotoMode = ContactPhotoMode.fromPref(
        prefs.getString(kContactPhotoModePrefKey),
      );
      _contactAvatarShape = ContactAvatarShape.fromPref(
        prefs.getString(kContactAvatarShapePrefKey),
      );
      _contactAvatarStyle = ContactAvatarStyle.fromPref(
        prefs.getString(kContactAvatarStylePrefKey),
      );
      _recentsShowContactPhotos =
          prefs.getBool(kRecentsShowContactPhotosPrefKey) ??
          kDefaultRecentsShowContactPhotos;
      _recentsContactAvatarShape = ContactAvatarShape.fromPref(
        prefs.getString(kRecentsContactAvatarShapePrefKey),
      );
      _recentsContactAvatarStyle = ContactAvatarStyle.fromPref(
        prefs.getString(kRecentsContactAvatarStylePrefKey),
      );

      _torchHasFlash = torchFlash;
      _torchIncomingMode = torchIncomingMode;
      _torchIncomingInterval = (prefs.getInt('torch_incoming_interval') ?? 500)
          .clamp(100, 3000);
      _torchOutgoingMode = prefs.getString('torch_outgoing_mode') ?? 'off';
      _torchOutgoingInterval = (prefs.getInt('torch_outgoing_interval') ?? 500)
          .clamp(100, 3000);
      _torchOngoingMode = prefs.getString('torch_ongoing_mode') ?? 'off';
      _torchOngoingInterval = (prefs.getInt('torch_ongoing_interval') ?? 500)
          .clamp(100, 3000);
    });
    try {
      final lid = await LauncherIconManager.getCurrentId();
      if (mounted) {
        setState(() {
          _launcherIconLabel = LauncherIconVariant.fromId(lid).label;
        });
      }
    } catch (_) {
      // Keep default label.
    }
    main_app.torchIncomingModeNotifier.value = _torchIncomingMode;
    main_app.torchIncomingIntervalNotifier.value = _torchIncomingInterval;
    main_app.torchOutgoingModeNotifier.value = _torchOutgoingMode;
    main_app.torchOutgoingIntervalNotifier.value = _torchOutgoingInterval;
    main_app.torchOngoingModeNotifier.value = _torchOngoingMode;
    main_app.torchOngoingIntervalNotifier.value = _torchOngoingInterval;
    main_app.recentsSearchShowContactsNotifier.value =
        _recentsSearchShowContacts;
    _publishSimIconColors();
  }

  void _publishSimIconColors() {
    main_app.simIconColorsNotifier.value = SimIconColorsState(
      byIndex: Map<int, SimIconThemeColors>.from(_simIconColors),
      sims: List<SimCardInfo>.from(_simCards),
    );
  }

  Color? _simIconColorFor(int index, {required bool isDark}) {
    final pair = _simIconColors[index];
    return isDark ? pair?.dark : pair?.light;
  }

  String _simIconColorsSubtitle(AppLocalizations l10n) {
    if (_simCards.length < 2) return l10n.simIconColorSubtitle;
    final customized = _simCards.where((s) {
      return _simIconColors[s.index]?.isCustom == true;
    }).length;
    if (customized == 0) return l10n.simIconColorDefault;
    return l10n.simIconColorSubtitle;
  }

  Future<void> _saveSimIconCustomization({
    required int index,
    required bool isDark,
    required SimIconBadgeStyle? style,
    required Color? color,
    required bool reset,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final map = Map<int, SimIconThemeColors>.from(_simIconColors);

    if (reset) {
      await clearSimIconCustomization(prefs: prefs, index: index);
      map.remove(index);
    } else {
      final prev = map[index] ?? const SimIconThemeColors();
      final nextStyle = style ?? prev.style ?? SimIconBadgeStyle.outline;
      Color? nextLight = prev.light;
      Color? nextDark = prev.dark;
      Color? seededDark;

      if (isDark) {
        nextDark = color;
      } else {
        nextLight = color;
        if (color != null && prev.dark == null) {
          final presetIdx = kSimIconColorLightPresets.indexWhere(
            (p) => colorsEqual(p, color),
          );
          seededDark = presetIdx >= 0
              ? kSimIconColorDarkPresets[presetIdx]
              : darkenSimIconColor(color);
          nextDark = seededDark;
        }
      }

      await saveSimIconStyle(prefs: prefs, index: index, style: nextStyle);
      await saveSimIconColor(
        prefs: prefs,
        index: index,
        isDark: isDark,
        color: color,
      );
      if (seededDark != null) {
        await saveSimIconColor(
          prefs: prefs,
          index: index,
          isDark: true,
          color: seededDark,
        );
      }

      map[index] = SimIconThemeColors(
        style: nextStyle,
        light: nextLight,
        dark: nextDark,
      );
    }

    if (!mounted) return;
    setState(() => _simIconColors = map);
    _publishSimIconColors();
  }

  Future<void> _showSimIconColorsPanel() async {
    if (_simCards.length < 2) return;
    final isDark = !_activeAppearanceIsLight(context);
    await showSimIconColorsSheet(
      context: context,
      sims: _simCards,
      colors: _simIconColors,
      isDark: isDark,
      onChanged:
          ({
            required int index,
            required SimIconBadgeStyle? style,
            required Color? color,
            required bool reset,
          }) {
            return _saveSimIconCustomization(
              index: index,
              isDark: isDark,
              style: style,
              color: color,
              reset: reset,
            );
          },
    );
  }

  Future<void> _saveRecentsSearchShowContacts(bool value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('recents_search_show_contacts', value);
    if (!mounted) return;
    setState(() => _recentsSearchShowContacts = value);
    main_app.recentsSearchShowContactsNotifier.value = value;
  }

  Future<void> _saveCallDisplaySettings(CallDisplaySettings settings) async {
    final prefs = await SharedPreferences.getInstance();
    await saveCallDisplaySettingsToPrefs(prefs, settings);
    if (!mounted) return;
    setState(() => _callDisplaySettings = settings);
  }

  void _showCallDisplaySettingsSheet() {
    showCallDisplaySettingsSheet(
      context,
      initial: _callDisplaySettings,
      onSave: _saveCallDisplaySettings,
    );
  }

  Future<void> _showContactPhotoSettingsSheet() async {
    await showContactPhotoSettingsSheet(context);
    if (!mounted) return;
    setState(() {
      _contactPhotoMode = main_app.contactPhotoModeNotifier.value;
      _contactAvatarShape = main_app.contactAvatarShapeNotifier.value;
      _contactAvatarStyle = main_app.contactAvatarStyleNotifier.value;
      _recentsShowContactPhotos =
          main_app.recentsShowContactPhotosNotifier.value;
      _recentsContactAvatarShape =
          main_app.recentsContactAvatarShapeNotifier.value;
      _recentsContactAvatarStyle =
          main_app.recentsContactAvatarStyleNotifier.value;
    });
  }

  String _defaultSimSubtitle(AppLocalizations l10n) {
    if (_defaultSimMode == kDefaultSimModeAsk) {
      return l10n.askEveryTime;
    }
    final idx = _defaultSimIndex;
    if (idx == null) return l10n.askEveryTime;
    return l10n.simSlot(idx + 1);
  }

  Future<void> _saveDefaultSim({required String mode, int? index}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(kDefaultSimModeKey, mode);
    if (mode == kDefaultSimModeFixed && index != null) {
      await prefs.setInt(kDefaultSimIndexKey, index);
    } else {
      await prefs.remove(kDefaultSimIndexKey);
    }
    setState(() {
      _defaultSimMode = mode;
      _defaultSimIndex = mode == kDefaultSimModeFixed ? index : null;
    });
  }

  Future<void> _saveTorchIncomingMode(String mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('torch_incoming_mode', mode);
    setState(() => _torchIncomingMode = mode);
    main_app.torchIncomingModeNotifier.value = mode;
  }

  Future<void> _saveTorchIncomingInterval(int ms) async {
    final prefs = await SharedPreferences.getInstance();
    final clamped = ms.clamp(100, 3000);
    await prefs.setInt('torch_incoming_interval', clamped);
    setState(() => _torchIncomingInterval = clamped);
    main_app.torchIncomingIntervalNotifier.value = clamped;
  }

  Future<void> _saveTorchOutgoingMode(String mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('torch_outgoing_mode', mode);
    setState(() => _torchOutgoingMode = mode);
    main_app.torchOutgoingModeNotifier.value = mode;
  }

  Future<void> _saveTorchOutgoingInterval(int ms) async {
    final prefs = await SharedPreferences.getInstance();
    final clamped = ms.clamp(100, 3000);
    await prefs.setInt('torch_outgoing_interval', clamped);
    setState(() => _torchOutgoingInterval = clamped);
    main_app.torchOutgoingIntervalNotifier.value = clamped;
  }

  Future<void> _saveTorchOngoingMode(String mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('torch_ongoing_mode', mode);
    setState(() => _torchOngoingMode = mode);
    main_app.torchOngoingModeNotifier.value = mode;
  }

  Future<void> _saveTorchOngoingInterval(int ms) async {
    final prefs = await SharedPreferences.getInstance();
    final clamped = ms.clamp(100, 3000);
    await prefs.setInt('torch_ongoing_interval', clamped);
    setState(() => _torchOngoingInterval = clamped);
    main_app.torchOngoingIntervalNotifier.value = clamped;
  }

  /// Torch interval is stored in ms; UI shows seconds (same range 0.1s–3.0s).
  String _torchIntervalSecondsLabel(int ms) {
    final s = ms / 1000.0;
    final t = s == s.roundToDouble()
        ? s.toInt().toString()
        : s.toStringAsFixed(1);
    return '$t s';
  }

  String _torchIncomingSubtitle(AppLocalizations l10n) {
    if (!_torchHasFlash) return l10n.flashlightUnavailable;
    switch (_torchIncomingMode) {
      case 'interval':
        return l10n.torchIntervalBlink(
          _torchIntervalSecondsLabel(_torchIncomingInterval),
        );
      default:
        return l10n.torchOff;
    }
  }

  String _torchOutgoingSubtitle(AppLocalizations l10n) {
    if (!_torchHasFlash) return l10n.flashlightUnavailable;
    if (_torchOutgoingMode == 'interval') {
      return l10n.torchIntervalBlink(
        _torchIntervalSecondsLabel(_torchOutgoingInterval),
      );
    }
    return l10n.torchOff;
  }

  String _torchOngoingSubtitle(AppLocalizations l10n) {
    if (!_torchHasFlash) return l10n.flashlightUnavailable;
    if (_torchOngoingMode == 'interval') {
      return l10n.torchIntervalBlink(
        _torchIntervalSecondsLabel(_torchOngoingInterval),
      );
    }
    return l10n.torchOff;
  }

  Future<void> _showDefaultSimPicker() async {
    final l10n = AppLocalizations.of(context);
    try {
      final raw = await const MethodChannel(
        'nothing_dialer/control',
      ).invokeMethod<List<dynamic>>('getSimCards');
      if (!mounted) return;
      if (raw == null || raw.isEmpty) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.noSimCardsFound)));
        return;
      }
      final sims = raw.cast<Map<dynamic, dynamic>>();
      await showModalBottomSheet<void>(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (sheetContext) => SettingsPickerFontScope(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(sheetContext).colorScheme.surface,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(28),
              ),
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
                          color: Theme.of(
                            sheetContext,
                          ).colorScheme.outlineVariant,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
                    child: Text(
                      l10n.defaultSimForCalls,
                      style: sheetContext.dialerTextStyle(
                        DialerFontRole.pageTitle,
                        TextStyle(
                          color: Theme.of(sheetContext).colorScheme.onSurface,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                    title: Text(
                      l10n.askEveryTime,
                      style: sheetContext.dialerTextStyle(
                        DialerFontRole.primary,
                        TextStyle(
                          color: Theme.of(sheetContext).colorScheme.onSurface,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    subtitle: Text(
                      l10n.askEveryTimeSubtitle,
                      style: sheetContext.dialerTextStyle(
                        DialerFontRole.secondary,
                        TextStyle(
                          color: Theme.of(
                            sheetContext,
                          ).colorScheme.onSurfaceVariant,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    onTap: () async {
                      await _saveDefaultSim(mode: kDefaultSimModeAsk);
                      if (sheetContext.mounted) Navigator.pop(sheetContext);
                    },
                  ),
                  ...sims.asMap().entries.map((e) {
                    final idx = e.key;
                    final sim = e.value;
                    final label =
                        sim['label'] as String? ?? l10n.simSlot(idx + 1);
                    final slot = (sim['slot'] as int?) ?? (idx + 1);
                    return ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      title: Text(
                        label,
                        style: sheetContext.dialerTextStyle(
                          DialerFontRole.primary,
                          TextStyle(
                            color: Theme.of(sheetContext).colorScheme.onSurface,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      subtitle: Text(
                        l10n.simSlot(slot),
                        style: sheetContext.dialerTextStyle(
                          DialerFontRole.secondary,
                          TextStyle(
                            color: Theme.of(
                              sheetContext,
                            ).colorScheme.onSurfaceVariant,
                            fontSize: 13,
                          ),
                        ),
                      ),
                      onTap: () async {
                        await _saveDefaultSim(
                          mode: kDefaultSimModeFixed,
                          index: idx,
                        );
                        if (sheetContext.mounted) Navigator.pop(sheetContext);
                      },
                    );
                  }),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      );
    } on PlatformException catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.couldNotLoadSims(e.message ?? ''))),
        );
      }
    }
  }

  Future<void> _saveFrequentContactsPeriod(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('frequent_contacts_period', value);
    setState(() => _frequentContactsPeriod = value);
    main_app.frequentContactsPeriodNotifier.value = value;
  }

  Future<void> _saveFrequentContactsMax(int value) async {
    final prefs = await SharedPreferences.getInstance();
    final clamped = value.clamp(0, 20);
    await prefs.setInt('frequent_contacts_max', clamped);
    setState(() => _frequentContactsMax = clamped);
    main_app.frequentContactsMaxNotifier.value = clamped;
  }

  String _frequentMaxSubtitle(AppLocalizations l10n) {
    if (_frequentContactsMax == 0) return l10n.frequentMaxOff;
    if (_frequentContactsMax == 1) return l10n.oneContact;
    return l10n.upToContacts(_frequentContactsMax);
  }

  String _frequentPeriodSubtitle(AppLocalizations l10n) =>
      frequentPeriodLabel(l10n, _frequentContactsPeriod);

  static const _glyphStyleKeys = <String>[
    'None',
    'Breath & Progress',
    'Accumulate',
    'Single',
    'Breath',
    'Steady',
  ];

  IconData _iconForGlyphStyle(String style) {
    switch (style) {
      case 'None':
        return Icons.block_rounded;
      case 'Breath & Progress':
        return Icons.flare_rounded;
      case 'Accumulate':
      case 'Single':
        return Icons.animation_rounded;
      case 'Breath':
        return Icons.tune_rounded;
      case 'Steady':
        return Icons.highlight_rounded;
      default:
        return Icons.flare_rounded;
    }
  }

  void _showGlyphStylePickerSheet({
    required String title,
    required String selected,
    required bool inCall,
    required Future<void> Function(String) save,
    required void Function(String) syncNotifiers,
  }) {
    final l10n = AppLocalizations.of(context);
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => SettingsPickerFontScope(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(sheetContext).colorScheme.surface,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
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
                        color: Theme.of(
                          sheetContext,
                        ).colorScheme.outlineVariant,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
                  child: Text(
                    title,
                    style: sheetContext.dialerTextStyle(
                      DialerFontRole.pageTitle,
                      TextStyle(
                        color: Theme.of(sheetContext).colorScheme.onSurface,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                ..._glyphStyleKeys.map((style) {
                  return SettingsPickerOption(
                    icon: _iconForGlyphStyle(style),
                    label: glyphStyleLabel(l10n, style),
                    subtitle: inCall
                        ? glyphStyleInCallSubtitle(l10n, style)
                        : glyphStyleOutgoingSubtitle(l10n, style),
                    selected: selected == style,
                    onTap: () async {
                      await save(style);
                      syncNotifiers(style);
                      if (sheetContext.mounted) Navigator.pop(sheetContext);
                    },
                  );
                }),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showTorchModePickerSheet({
    required String title,
    required String currentMode,
    required bool incoming,
    required bool ongoing,
    required Future<void> Function(String) save,
  }) {
    final l10n = AppLocalizations.of(context);
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => SettingsPickerFontScope(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(sheetContext).colorScheme.surface,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
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
                        color: Theme.of(
                          sheetContext,
                        ).colorScheme.outlineVariant,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
                  child: Text(
                    title,
                    style: sheetContext.dialerTextStyle(
                      DialerFontRole.pageTitle,
                      TextStyle(
                        color: Theme.of(sheetContext).colorScheme.onSurface,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SettingsPickerOption(
                  icon: Icons.block_rounded,
                  label: l10n.torchOff,
                  subtitle: torchModePickerSubtitle(
                    l10n,
                    'off',
                    incoming: incoming,
                    ongoing: ongoing,
                  ),
                  selected: currentMode == 'off',
                  onTap: () async {
                    await save('off');
                    if (sheetContext.mounted) Navigator.pop(sheetContext);
                  },
                ),
                SettingsPickerOption(
                  icon: Icons.timer_rounded,
                  label: l10n.torchFixedInterval,
                  subtitle: l10n.torchFixedIntervalSubtitle,
                  selected: currentMode == 'interval',
                  onTap: () async {
                    await save('interval');
                    if (sheetContext.mounted) Navigator.pop(sheetContext);
                  },
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showFrequentPeriodPicker() {
    final l10n = AppLocalizations.of(context);
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => SettingsPickerFontScope(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(sheetContext).colorScheme.surface,
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
                        color: Theme.of(
                          sheetContext,
                        ).colorScheme.outlineVariant,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
                  child: Text(
                    l10n.timePeriodTitle,
                    style: sheetContext.dialerTextStyle(
                      DialerFontRole.pageTitle,
                      TextStyle(
                        color: Theme.of(sheetContext).colorScheme.onSurface,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SettingsPickerOption(
                  icon: Icons.today_rounded,
                  label: l10n.periodLast24Hours,
                  subtitle: l10n.periodLast24HoursSubtitle,
                  selected: _frequentContactsPeriod == 'day',
                  onTap: () {
                    _saveFrequentContactsPeriod('day');
                    Navigator.pop(sheetContext);
                  },
                ),
                SettingsPickerOption(
                  icon: Icons.date_range_rounded,
                  label: l10n.periodLast7Days,
                  subtitle: l10n.periodLast7DaysSubtitle,
                  selected: _frequentContactsPeriod == 'week',
                  onTap: () {
                    _saveFrequentContactsPeriod('week');
                    Navigator.pop(sheetContext);
                  },
                ),
                SettingsPickerOption(
                  icon: Icons.calendar_month_rounded,
                  label: l10n.periodLast30Days,
                  subtitle: l10n.periodLast30DaysSubtitle,
                  selected: _frequentContactsPeriod == 'month',
                  onTap: () {
                    _saveFrequentContactsPeriod('month');
                    Navigator.pop(sheetContext);
                  },
                ),
                SettingsPickerOption(
                  icon: Icons.calendar_today_rounded,
                  label: l10n.periodLast12Months,
                  subtitle: l10n.periodLast12MonthsSubtitle,
                  selected: _frequentContactsPeriod == 'year',
                  onTap: () {
                    _saveFrequentContactsPeriod('year');
                    Navigator.pop(sheetContext);
                  },
                ),
                SettingsPickerOption(
                  icon: Icons.all_inclusive_rounded,
                  label: l10n.periodAllTime,
                  subtitle: l10n.periodAllTimeSubtitle,
                  selected: _frequentContactsPeriod == 'all',
                  onTap: () {
                    _saveFrequentContactsPeriod('all');
                    Navigator.pop(sheetContext);
                  },
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showFrequentMaxPicker() {
    final l10n = AppLocalizations.of(context);
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => SettingsPickerFontScope(
        child: StatefulBuilder(
          builder: (context, setModalState) {
            return Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 32,
                          height: 4,
                          margin: const EdgeInsets.only(bottom: 24),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.outlineVariant,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      Text(
                        l10n.numberOfRecordsTitle,
                        style: context.dialerTextStyle(
                          DialerFontRole.pageTitle,
                          TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        l10n.recordsPickerSubtitle,
                        style: context.dialerTextStyle(
                          DialerFontRole.secondary,
                          TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Expanded(
                            child: Slider(
                              value: _frequentContactsMax.toDouble().clamp(
                                0,
                                20,
                              ),
                              min: 0,
                              max: 20,
                              divisions: 20,
                              activeColor: Theme.of(
                                context,
                              ).colorScheme.primary,
                              onChanged: (val) {
                                setModalState(
                                  () => _frequentContactsMax = val.toInt(),
                                );
                                setState(
                                  () => _frequentContactsMax = val.toInt(),
                                );
                              },
                              onChangeEnd: (val) {
                                _saveFrequentContactsMax(val.toInt());
                              },
                            ),
                          ),
                          SizedBox(
                            width: 44,
                            child: Text(
                              _frequentContactsMax == 0
                                  ? l10n.frequentMaxOff
                                  : '${_frequentContactsMax}',
                              style: context.dialerTextStyle(
                                DialerFontRole.primary,
                                TextStyle(
                                  color: Theme.of(context).colorScheme.outline,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: TextButton(
                          onPressed: () => Navigator.pop(sheetContext),
                          child: Text(
                            l10n.done,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> _saveAnswerMethod(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('answer_method', value);
    setState(() => _answerMethod = value);
    try {
      await const MethodChannel(
        'nothing_dialer/control',
      ).invokeMethod<void>('notifyAnswerMethodChanged');
    } on PlatformException {
      // Native call UI may not be active.
    }
  }

  Future<void> _saveThemeMode(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme_mode', value);
    setState(() => _themeMode = value);
    main_app.themeModeNotifier.value = value;
  }

  Future<void> _saveLightBgColor(Color color) async {
    final clamped = clampToLight(color);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('light_bg_color', colorToArgb32(clamped));
    setState(() => _lightBgColor = clamped);
    main_app.lightBgColorNotifier.value = clamped;
  }

  Future<void> _saveDarkBgColor(Color color) async {
    final clamped = clampToDark(color);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('dark_bg_color', colorToArgb32(clamped));
    setState(() => _darkBgColor = clamped);
    main_app.darkBgColorNotifier.value = clamped;
  }

  Future<void> _saveLightAccentColor(Color color) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('light_accent_color', colorToArgb32(color));
    setState(() => _lightAccentColor = color);
    main_app.lightAccentColorNotifier.value = color;
  }

  Future<void> _saveDarkAccentColor(Color color) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('dark_accent_color', colorToArgb32(color));
    setState(() => _darkAccentColor = color);
    main_app.darkAccentColorNotifier.value = color;
  }

  Future<void> _saveCallBgColor(Color color) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('call_bg_color', colorToArgb32(color));
    setState(() => _callBgColor = color);
  }

  String _hexRgb(Color c) {
    final v = c.toARGB32() & 0xFFFFFF;
    return '#${v.toRadixString(16).padLeft(6, '0').toUpperCase()}';
  }

  String _bgSubtitle(AppLocalizations l10n, Color c, List<Color> presets) {
    final idx = presets.indexWhere((p) => colorsEqual(p, c));
    final hex = _hexRgb(c);
    if (idx >= 0) return l10n.presetColorHex(hex);
    return l10n.customColorHex(hex);
  }

  String _accentSubtitle(AppLocalizations l10n, Color c) {
    final idx = kAccentPresets.indexWhere((p) => colorsEqual(p, c));
    final hex = _hexRgb(c);
    if (idx >= 0) return l10n.presetColorHex(hex);
    return l10n.customColorHex(hex);
  }

  Future<void> _showPresetBottomSheet({
    required String title,
    required List<Color> presets,
    required Color selectedColor,
    required Future<void> Function(Color) onPresetChosen,
    required Future<void> Function() openCustomDialog,
    String? firstSwatchLabel,
  }) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) {
        return SettingsPickerFontScope(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(sheetContext).colorScheme.surface,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(28),
              ),
            ),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 32,
                          height: 4,
                          margin: const EdgeInsets.only(bottom: 16),
                          decoration: BoxDecoration(
                            color: Theme.of(
                              sheetContext,
                            ).colorScheme.outlineVariant,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      Text(
                        title,
                        style: sheetContext.dialerTextStyle(
                          DialerFontRole.pageTitle,
                          TextStyle(
                            color: Theme.of(sheetContext).colorScheme.onSurface,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        children: [
                          for (var i = 0; i < presets.length; i++)
                            _ColorSwatchButton(
                              color: presets[i],
                              selected: colorsEqual(presets[i], selectedColor),
                              label: firstSwatchLabel != null && i == 0
                                  ? firstSwatchLabel
                                  : null,
                              onTap: () async {
                                await onPresetChosen(presets[i]);
                                if (sheetContext.mounted) {
                                  Navigator.pop(sheetContext);
                                }
                              },
                            ),
                          _CustomColorSwatchButton(
                            onTap: () async {
                              Navigator.pop(sheetContext);
                              if (!mounted) return;
                              await openCustomDialog();
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _showLightBgPicker() async {
    final l10n = AppLocalizations.of(context);
    await _showPresetBottomSheet(
      title: l10n.lightBackground,
      presets: kLightPresets,
      selectedColor: _lightBgColor,
      onPresetChosen: _saveLightBgColor,
      openCustomDialog: () =>
          _showCustomLightColorDialog(target: _ColorSlot.background),
      firstSwatchLabel: l10n.swatchDefault,
    );
  }

  Future<void> _showLightAccentPicker() async {
    final l10n = AppLocalizations.of(context);
    await _showPresetBottomSheet(
      title: l10n.lightAccent,
      presets: kAccentPresets,
      selectedColor: _lightAccentColor,
      onPresetChosen: _saveLightAccentColor,
      openCustomDialog: () =>
          _showCustomLightColorDialog(target: _ColorSlot.accent),
    );
  }

  Future<void> _showDarkBgPicker() async {
    final l10n = AppLocalizations.of(context);
    await _showPresetBottomSheet(
      title: l10n.darkBackground,
      presets: kDarkPresets,
      selectedColor: _darkBgColor,
      onPresetChosen: _saveDarkBgColor,
      openCustomDialog: () =>
          _showCustomDarkColorDialog(target: _ColorSlot.background),
      firstSwatchLabel: l10n.swatchDefault,
    );
  }

  Future<void> _showDarkAccentPicker() async {
    final l10n = AppLocalizations.of(context);
    await _showPresetBottomSheet(
      title: l10n.darkAccent,
      presets: kAccentPresets,
      selectedColor: _darkAccentColor,
      onPresetChosen: _saveDarkAccentColor,
      openCustomDialog: () =>
          _showCustomDarkColorDialog(target: _ColorSlot.accent),
    );
  }

  Future<void> _showCallBgPicker() async {
    final l10n = AppLocalizations.of(context);
    await _showPresetBottomSheet(
      title: l10n.callBackground,
      presets: kCallBgPresets,
      selectedColor: _callBgColor,
      onPresetChosen: _saveCallBgColor,
      openCustomDialog: _showCustomCallBgColorDialog,
      firstSwatchLabel: l10n.swatchDefault,
    );
  }

  Future<void> _showCustomCallBgColorDialog() async {
    final l10n = AppLocalizations.of(context);
    Color pickerColor = _callBgColor;
    final result = await showDialog<Color>(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: Theme.of(ctx).colorScheme.surface,
          title: Text(
            l10n.customCallBackgroundPicker,
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
      await _saveCallBgColor(result);
    }
  }

  Future<void> _showCustomLightColorDialog({required _ColorSlot target}) async {
    final l10n = AppLocalizations.of(context);
    Color pickerColor = target == _ColorSlot.accent
        ? _lightAccentColor
        : _lightBgColor;
    final result = await showDialog<Color>(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: Theme.of(ctx).colorScheme.surface,
          title: Text(
            target == _ColorSlot.accent
                ? l10n.customAccentColorPicker
                : l10n.customLightBackgroundPicker,
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
      if (target == _ColorSlot.accent) {
        await _saveLightAccentColor(result);
      } else {
        await _saveLightBgColor(result);
      }
    }
  }

  Future<void> _showCustomDarkColorDialog({required _ColorSlot target}) async {
    final l10n = AppLocalizations.of(context);
    Color pickerColor = target == _ColorSlot.accent
        ? _darkAccentColor
        : _darkBgColor;
    final result = await showDialog<Color>(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: Theme.of(ctx).colorScheme.surface,
          title: Text(
            target == _ColorSlot.accent
                ? l10n.customAccentColorPicker
                : l10n.customDarkBackgroundPicker,
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
      if (target == _ColorSlot.accent) {
        await _saveDarkAccentColor(result);
      } else {
        await _saveDarkBgColor(result);
      }
    }
  }

  Future<void> _saveGlyphAnimationStyle(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('glyph_animation_style', value);
    setState(() => _glyphAnimationStyle = value);
    main_app.glyphAnimationStyleNotifier.value = value;
  }

  Future<void> _saveInCallAnimationStyle(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('in_call_animation_style', value);
    setState(() => _inCallAnimationStyle = value);
    main_app.inCallAnimationStyleNotifier.value = value;
  }

  Future<void> _saveGlyphC1C4Interval(int value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('glyph_c1c4_interval', value);
    setState(() => _glyphC1C4Interval = value);
    main_app.glyphC1C4IntervalNotifier.value = value;
  }

  Future<void> _saveInCallC1C4Interval(int value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('in_call_c1c4_interval', value);
    setState(() => _inCallC1C4Interval = value);
    main_app.inCallC1C4IntervalNotifier.value = value;
  }

  Future<void> _saveGlyphBreathProgressDuration(int value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('glyph_breath_progress_duration', value);
    setState(() => _glyphBreathProgressDuration = value);
    main_app.glyphBreathProgressDurationNotifier.value = value;
  }

  Future<void> _saveGlyphBreathProgressInterval(int value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('glyph_breath_progress_interval', value);
    setState(() => _glyphBreathProgressInterval = value);
    main_app.glyphBreathProgressIntervalNotifier.value = value;
  }

  Future<void> _saveInCallBreathProgressDuration(int value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('in_call_breath_progress_duration', value);
    setState(() => _inCallBreathProgressDuration = value);
    main_app.inCallBreathProgressDurationNotifier.value = value;
  }

  Future<void> _saveInCallBreathProgressInterval(int value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('in_call_breath_progress_interval', value);
    setState(() => _inCallBreathProgressInterval = value);
    main_app.inCallBreathProgressIntervalNotifier.value = value;
  }

  String _answerMethodSubtitle(AppLocalizations l10n) {
    switch (_answerMethod) {
      case 'button':
        return l10n.answerButtonTapSubtitle;
      case 'huawei':
        return l10n.answerHuaweiTileSubtitle;
      case 'slide':
      default:
        return l10n.answerSlide;
    }
  }

  String _fontSubtitle(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return fontSettingsSubtitle(l10n, main_app.fontConfigNotifier.value);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    final searching = _searchQuery.trim().isNotEmpty;

    final localePref = main_app.localeNotifier.value;
    final languageSubtitle = localePref == kAppLocaleSystem
        ? l10n.languageDeviceDefault
        : nativeLanguageName(localePref);
    final fontSubtitle = _fontSubtitle(context);
    final themeSubtitle = _themeMode == 'system'
        ? l10n.themeSystemDefault
        : _themeMode == 'light'
        ? l10n.themeLight
        : l10n.themeDark;
    final lightBgSubtitle = _bgSubtitle(l10n, _lightBgColor, kLightPresets);
    final lightAccentSubtitle = _accentSubtitle(l10n, _lightAccentColor);
    final darkBgSubtitle = _bgSubtitle(l10n, _darkBgColor, kDarkPresets);
    final darkAccentSubtitle = _accentSubtitle(l10n, _darkAccentColor);
    final answerSubtitle = _answerMethodSubtitle(l10n);
    final callBgSubtitle = _bgSubtitle(l10n, _callBgColor, kCallBgPresets);
    final contactPhotoSubtitle = contactPhotoSettingsSubtitle(
      l10n,
      _contactPhotoMode,
      _contactAvatarShape,
      _contactAvatarStyle,
      recentsShowPhotos: _recentsShowContactPhotos,
      recentsShape: _recentsContactAvatarShape,
      recentsStyle: _recentsContactAvatarStyle,
    );
    final defaultSimSubtitle = _defaultSimSubtitle(l10n);
    final frequentMaxSubtitle = _frequentMaxSubtitle(l10n);
    final frequentPeriodSubtitle = _frequentPeriodSubtitle(l10n);
    final torchIncomingSubtitle = _torchIncomingSubtitle(l10n);
    final torchOutgoingSubtitle = _torchOutgoingSubtitle(l10n);
    final torchOngoingSubtitle = _torchOngoingSubtitle(l10n);
    final glyphCallingSubtitle = glyphStyleLabel(l10n, _glyphAnimationStyle);
    final glyphOngoingSubtitle = glyphStyleLabel(l10n, _inCallAnimationStyle);

    final showLanguage = _showSettingsItem(l10n.general, [
      l10n.language,
      languageSubtitle,
    ]);
    final showFont = _showSettingsItem(l10n.appearanceSection, [
      l10n.font,
      fontSubtitle,
      l10n.general,
    ]);
    final showTheme = _showSettingsItem(l10n.appearanceSection, [
      l10n.theme,
      themeSubtitle,
      l10n.general,
    ]);
    final showLightBg =
        _activeAppearanceIsLight(context) &&
        _showSettingsItem(l10n.appearanceSection, [
          l10n.background,
          lightBgSubtitle,
          l10n.general,
        ]);
    final showLightAccent =
        _activeAppearanceIsLight(context) &&
        _showSettingsItem(l10n.appearanceSection, [
          l10n.accent,
          lightAccentSubtitle,
          l10n.general,
        ]);
    final showDarkBg =
        !_activeAppearanceIsLight(context) &&
        _showSettingsItem(l10n.appearanceSection, [
          l10n.background,
          darkBgSubtitle,
          l10n.general,
        ]);
    final showDarkAccent =
        !_activeAppearanceIsLight(context) &&
        _showSettingsItem(l10n.appearanceSection, [
          l10n.accent,
          darkAccentSubtitle,
          l10n.general,
        ]);
    final showAppIcon =
        !kIsWeb &&
        Platform.isAndroid &&
        _showSettingsItem(l10n.appearanceSection, [
          l10n.appIcon,
          _launcherIconLabel,
          l10n.general,
        ]);
    final showAppearance =
        showFont ||
        showTheme ||
        showLightBg ||
        showLightAccent ||
        showDarkBg ||
        showDarkAccent ||
        showAppIcon;

    final showAnswerMethod = _showSettingsItem(l10n.inCallScreenSection, [
      l10n.answerMethod,
      answerSubtitle,
      l10n.general,
    ]);
    final showCallBackground =
        !kIsWeb &&
        Platform.isAndroid &&
        _showSettingsItem(l10n.inCallScreenSection, [
          l10n.callBackground,
          callBgSubtitle,
          l10n.general,
        ]);
    final callDisplaySubtitle = callDisplaySettingsSubtitle(
      l10n,
      _callDisplaySettings,
    );
    final showCallDisplay = _showSettingsItem(l10n.inCallScreenSection, [
      l10n.callDisplay,
      callDisplaySubtitle,
      l10n.callDisplayHideNumberSection,
      l10n.callDisplayHideSimSection,
      l10n.callDisplayHideNumberIncoming,
      l10n.callDisplayHideNumberOutgoing,
      l10n.callDisplayHideNumberInCall,
      l10n.callDisplayHideSimIncoming,
      l10n.callDisplayHideSimOutgoing,
      l10n.callDisplayHideSimInCall,
      l10n.calling,
      l10n.general,
    ]);
    final showContactPhotos = _showSettingsItem(l10n.inCallScreenSection, [
      l10n.contactPhotos,
      contactPhotoSubtitle,
      l10n.general,
    ]);
    final showInCall =
        showAnswerMethod ||
        showCallBackground ||
        showCallDisplay ||
        showContactPhotos;

    final showDefaultSim = _showSettingsItem(l10n.simAndCallsSection, [
      l10n.defaultSim,
      defaultSimSubtitle,
      l10n.calling,
    ]);
    final simIconColorsSubtitle = _simIconColorsSubtitle(l10n);
    final showSimIconColors =
        _simCards.length >= 2 &&
        _showSettingsItem(l10n.simAndCallsSection, [
          l10n.simIconColor,
          simIconColorsSubtitle,
          l10n.simIconColorSubtitle,
          l10n.simIconStyleOutline,
          l10n.simIconStyleFill,
          l10n.calling,
        ]);
    final showSounds = _showSettingsItem(l10n.simAndCallsSection, [
      l10n.soundsAndVibration,
      l10n.soundsAndVibrationSubtitle,
      l10n.calling,
    ]);
    final showSimAndCalls =
        showDefaultSim || showSimIconColors || showSounds;

    final showFavourites = _showSettingsItem(l10n.callListsSection, [
      l10n.allFavourites,
      l10n.allFavouritesSubtitle,
      l10n.calling,
    ]);
    final showBlocked = _showSettingsItem(l10n.callListsSection, [
      l10n.blockedNumbers,
      l10n.blockedNumbersSubtitle,
      l10n.calling,
    ]);
    final showCallLists = showFavourites || showBlocked;

    final showRecentsContacts = _showSettingsItem(
      l10n.contactsAndRecentsSection,
      [
        l10n.recentsSearchShowContacts,
        l10n.recentsSearchShowContactsSubtitle,
        l10n.recentsSearchSection,
      ],
    );

    final showFrequentMax = _showSettingsItem(l10n.contactsAndRecentsSection, [
      l10n.frequentlyContactedHeader,
      frequentMaxSubtitle,
      l10n.frequentlyContacted,
      l10n.numberOfRecords,
    ]);
    final showFrequentPeriod =
        _frequentContactsMax > 0 &&
        _showSettingsItem(l10n.contactsAndRecentsSection, [
          l10n.timePeriod,
          frequentPeriodSubtitle,
          l10n.frequentlyContacted,
        ]);
    final showContactsRecents =
        showRecentsContacts || showFrequentMax || showFrequentPeriod;

    final showTorchIncoming = _showSettingsItem(l10n.torchBlink, [
      l10n.torchIncomingCall,
      torchIncomingSubtitle,
    ]);
    final showTorchIncomingInterval =
        _torchHasFlash &&
        _torchIncomingMode == 'interval' &&
        _showSettingsItem(l10n.torchBlink, [
          l10n.torchIncomingInterval,
          _torchIntervalSecondsLabel(_torchIncomingInterval),
        ]);
    final showTorchOutgoing = _showSettingsItem(l10n.torchBlink, [
      l10n.torchOutgoingCall,
      torchOutgoingSubtitle,
    ]);
    final showTorchOutgoingInterval =
        _torchHasFlash &&
        _torchOutgoingMode == 'interval' &&
        _showSettingsItem(l10n.torchBlink, [
          l10n.torchOutgoingInterval,
          _torchIntervalSecondsLabel(_torchOutgoingInterval),
        ]);
    final showTorchOngoing = _showSettingsItem(l10n.torchBlink, [
      l10n.torchOngoingCall,
      torchOngoingSubtitle,
    ]);
    final showTorchOngoingInterval =
        _torchHasFlash &&
        _torchOngoingMode == 'interval' &&
        _showSettingsItem(l10n.torchBlink, [
          l10n.torchOngoingInterval,
          _torchIntervalSecondsLabel(_torchOngoingInterval),
        ]);
    final showTorch =
        showTorchIncoming ||
        showTorchIncomingInterval ||
        showTorchOutgoing ||
        showTorchOutgoingInterval ||
        showTorchOngoing ||
        showTorchOngoingInterval;

    final showGlyphCalling = _showSettingsItem(l10n.glyphLights, [
      l10n.glyphCallingAnimation,
      glyphCallingSubtitle,
      l10n.glyphLights,
    ]);
    final showGlyphBreath =
        _glyphAnimationStyle == 'Breath' &&
        _showSettingsItem(l10n.glyphLights, [
          l10n.breathSettings,
          l10n.breathSettingsSpeedSummary(
            _customChannels.length,
            _customInterval,
          ),
          l10n.glyphLights,
        ]);
    final showGlyphSteady =
        _glyphAnimationStyle == 'Steady' &&
        _showSettingsItem(l10n.glyphLights, [
          l10n.activeLights,
          l10n.lightsCount(_customChannels.length),
          l10n.glyphLights,
        ]);
    final showGlyphSpeed =
        (_glyphAnimationStyle == 'Accumulate' ||
            _glyphAnimationStyle == 'Single') &&
        _showSettingsItem(l10n.glyphLights, [
          l10n.speedSettings,
          l10n.speedSettingsDelay(_glyphC1C4Interval),
          l10n.glyphLights,
        ]);
    final showGlyphDuration =
        _glyphAnimationStyle == 'Breath & Progress' &&
        _showSettingsItem(l10n.glyphLights, [
          l10n.durationAndSpeed,
          l10n.durationSpeedSummary(
            _glyphBreathProgressDuration ~/ 1000,
            _glyphBreathProgressInterval,
          ),
          l10n.glyphLights,
        ]);
    final showGlyphOngoing = _showSettingsItem(l10n.glyphLights, [
      l10n.glyphOngoingAnimation,
      glyphOngoingSubtitle,
      l10n.glyphLights,
    ]);
    final showInCallBreath =
        _inCallAnimationStyle == 'Breath' &&
        _showSettingsItem(l10n.glyphLights, [
          l10n.breathSettings,
          l10n.breathSettingsSpeedSummary(
            _inCallCustomChannels.length,
            _inCallCustomInterval,
          ),
          l10n.glyphLights,
        ]);
    final showInCallSteady =
        _inCallAnimationStyle == 'Steady' &&
        _showSettingsItem(l10n.glyphLights, [
          l10n.activeLights,
          l10n.lightsCount(_inCallCustomChannels.length),
          l10n.glyphLights,
        ]);
    final showInCallSpeed =
        (_inCallAnimationStyle == 'Accumulate' ||
            _inCallAnimationStyle == 'Single') &&
        _showSettingsItem(l10n.glyphLights, [
          l10n.speedSettings,
          l10n.speedSettingsDelay(_inCallC1C4Interval),
          l10n.glyphLights,
        ]);
    final showInCallDuration =
        _inCallAnimationStyle == 'Breath & Progress' &&
        _showSettingsItem(l10n.glyphLights, [
          l10n.durationAndSpeed,
          l10n.durationSpeedSummary(
            _inCallBreathProgressDuration ~/ 1000,
            _inCallBreathProgressInterval,
          ),
          l10n.glyphLights,
        ]);
    final showGlyph =
        showGlyphCalling ||
        showGlyphBreath ||
        showGlyphSteady ||
        showGlyphSpeed ||
        showGlyphDuration ||
        showGlyphOngoing ||
        showInCallBreath ||
        showInCallSteady ||
        showInCallSpeed ||
        showInCallDuration;

    final showReviewTile =
        !kIsWeb &&
        Platform.isAndroid &&
        _showSettingsItem(l10n.aboutFeedbackSection, [
          l10n.reviewRateOnPlay,
          l10n.reviewRateOnPlaySubtitle,
        ]);
    final showGithubTile = _showSettingsItem(l10n.aboutFeedbackSection, [
      l10n.aboutViewSource,
      l10n.aboutRepositoryHost,
      l10n.aboutDescription,
    ]);
    final showAboutFeedback = showReviewTile || showGithubTile;

    final showResetCustomization = _showSettingsItem(l10n.resetCustomization, [
      l10n.resetCustomization,
      l10n.resetCustomizationSubtitle,
      l10n.resetCustomizationInfoTitle,
      l10n.language,
      l10n.theme,
      l10n.font,
      l10n.appIcon,
      l10n.simIconColor,
      l10n.answerMethod,
      l10n.torchBlink,
      l10n.glyphLights,
      l10n.frequentlyContacted,
      l10n.general,
      l10n.appearanceSection,
      l10n.inCallScreenSection,
      l10n.contactsAndRecentsSection,
    ]);

    final hasResults =
        showLanguage ||
        showAppearance ||
        showInCall ||
        showSimAndCalls ||
        showCallLists ||
        showContactsRecents ||
        showTorch ||
        showGlyph ||
        showResetCustomization ||
        showAboutFeedback;

    return PopScope(
      canPop: !_searchOpen,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop && _searchOpen) _closeSearch();
      },
      child: DialerFontScope(
        surface: DialerFontSurface.settings,
        child: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: AppBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            foregroundColor: scheme.onSurface,
            elevation: 0,
            leading: _searchOpen
                ? IconButton(
                    icon: const Icon(Icons.arrow_back_rounded),
                    tooltip: MaterialLocalizations.of(
                      context,
                    ).backButtonTooltip,
                    onPressed: _closeSearch,
                  )
                : null,
            title: _searchOpen
                ? TextField(
                    controller: _searchController,
                    focusNode: _searchFocusNode,
                    autofocus: true,
                    textInputAction: TextInputAction.search,
                    style: context.dialerTextStyle(
                      DialerFontRole.primary,
                      TextStyle(color: scheme.onSurface, fontSize: 18),
                    ),
                    cursorColor: scheme.primary,
                    decoration: InputDecoration(
                      hintText: l10n.settingsSearchHint,
                      hintStyle: context.dialerTextStyle(
                        DialerFontRole.secondary,
                        TextStyle(color: scheme.onSurfaceVariant, fontSize: 18),
                      ),
                      border: InputBorder.none,
                      isDense: true,
                    ),
                  )
                : Text(
                    l10n.settings,
                    style: context.dialerTextStyle(
                      DialerFontRole.pageTitle,
                      Theme.of(
                        context,
                      ).textTheme.titleLarge!.copyWith(color: scheme.onSurface),
                    ),
                  ),
            actions: [
              if (_searchOpen && _searchQuery.isNotEmpty)
                IconButton(
                  icon: const Icon(Icons.close_rounded),
                  tooltip: MaterialLocalizations.of(
                    context,
                  ).deleteButtonTooltip,
                  onPressed: () {
                    _searchController.clear();
                    _searchFocusNode.requestFocus();
                  },
                )
              else if (!_searchOpen)
                IconButton(
                  icon: const Icon(Icons.search_rounded),
                  tooltip: l10n.settingsSearchHint,
                  onPressed: _openSearch,
                ),
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const OngoingCallBanner(),
              Expanded(
                child: !hasResults && searching
                    ? Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32),
                          child: Text(
                            l10n.settingsSearchNoResults,
                            textAlign: TextAlign.center,
                            style: context.dialerTextStyle(
                              DialerFontRole.secondary,
                              TextStyle(
                                color: scheme.onSurfaceVariant,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      )
                    : ListView(
                        children: [
                          if (showLanguage) ...[
                            _SectionHeader(title: l10n.general),
                            ListenableBuilder(
                              listenable: main_app.localeNotifier,
                              builder: (context, _) {
                                final pref = main_app.localeNotifier.value;
                                final subtitle = pref == kAppLocaleSystem
                                    ? l10n.languageDeviceDefault
                                    : nativeLanguageName(pref);
                                return _SettingsTile(
                                  icon: Icons.language_rounded,
                                  title: l10n.language,
                                  subtitle: subtitle,
                                  onTap: () =>
                                      showLanguagePickerSheet(context),
                                );
                              },
                            ),
                          ],
                          if (showAppearance) ...[
                            _SectionHeader(title: l10n.appearanceSection),
                            if (showTheme)
                              _SettingsTile(
                                icon: Icons.palette_rounded,
                                title: l10n.theme,
                                subtitle: themeSubtitle,
                                onTap: () => _showThemeModePicker(),
                              ),
                            if (showFont)
                              ListenableBuilder(
                                listenable: main_app.fontConfigNotifier,
                                builder: (context, _) {
                                  return _SettingsTile(
                                    icon: Icons.text_fields_rounded,
                                    title: l10n.font,
                                    subtitle: _fontSubtitle(context),
                                    onTap: () =>
                                        showFontSettingsSheet(context),
                                  );
                                },
                              ),
                            if (showLightBg)
                              _SettingsTile(
                                icon: Icons.light_mode_outlined,
                                title: l10n.background,
                                subtitle: lightBgSubtitle,
                                previewColor: _lightBgColor,
                                onTap: _showLightBgPicker,
                              ),
                            if (showLightAccent)
                              _SettingsTile(
                                icon: Icons.color_lens_outlined,
                                title: l10n.accent,
                                subtitle: lightAccentSubtitle,
                                previewColor: _lightAccentColor,
                                onTap: _showLightAccentPicker,
                              ),
                            if (showDarkBg)
                              _SettingsTile(
                                icon: Icons.dark_mode_outlined,
                                title: l10n.background,
                                subtitle: darkBgSubtitle,
                                previewColor: _darkBgColor,
                                onTap: _showDarkBgPicker,
                              ),
                            if (showDarkAccent)
                              _SettingsTile(
                                icon: Icons.color_lens_outlined,
                                title: l10n.accent,
                                subtitle: darkAccentSubtitle,
                                previewColor: _darkAccentColor,
                                onTap: _showDarkAccentPicker,
                              ),
                            if (showAppIcon)
                              _SettingsTile(
                                icon: Icons.apps_rounded,
                                title: l10n.appIcon,
                                subtitle: _launcherIconLabel,
                                onTap: () async {
                                  await showLauncherIconPicker(context);
                                  if (context.mounted) await _loadSettings();
                                },
                              ),
                          ],
                          if (showInCall) ...[
                            _SectionHeader(title: l10n.inCallScreenSection),
                            if (showAnswerMethod)
                              _SettingsTile(
                                icon: Icons.phone_callback_rounded,
                                title: l10n.answerMethod,
                                subtitle: answerSubtitle,
                                onTap: () => _showAnswerMethodPicker(),
                              ),
                            if (showCallBackground)
                              _SettingsTile(
                                icon: Icons.phone_in_talk_rounded,
                                title: l10n.callBackground,
                                subtitle: callBgSubtitle,
                                previewColor: _callBgColor,
                                onTap: _showCallBgPicker,
                              ),
                            if (showCallDisplay)
                              _SettingsTile(
                                icon: Icons.visibility_off_outlined,
                                title: l10n.callDisplay,
                                subtitle: callDisplaySubtitle,
                                onTap: _showCallDisplaySettingsSheet,
                              ),
                            if (showContactPhotos)
                              _SettingsTile(
                                icon: Icons.account_circle_outlined,
                                title: l10n.contactPhotos,
                                subtitle: contactPhotoSubtitle,
                                onTap: _showContactPhotoSettingsSheet,
                              ),
                          ],
                          if (showSimAndCalls) ...[
                            _SectionHeader(title: l10n.simAndCallsSection),
                            if (showDefaultSim)
                              _SettingsTile(
                                icon: Icons.sim_card_rounded,
                                title: l10n.defaultSim,
                                subtitle: defaultSimSubtitle,
                                onTap: _showDefaultSimPicker,
                              ),
                            if (showSimIconColors)
                              _SettingsTile(
                                icon: Icons.sim_card_outlined,
                                title: l10n.simIconColor,
                                subtitle: simIconColorsSubtitle,
                                previewColor: _simIconColorFor(
                                  _simCards.first.index,
                                  isDark: !_activeAppearanceIsLight(context),
                                ),
                                onTap: _showSimIconColorsPanel,
                              ),
                            if (showSounds)
                              _SettingsTile(
                                icon: Icons.volume_up_rounded,
                                title: l10n.soundsAndVibration,
                                subtitle: l10n.soundsAndVibrationSubtitle,
                                onTap: () async {
                                  try {
                                    await const MethodChannel(
                                      'nothing_dialer/control',
                                    ).invokeMethod<void>('openSoundSettings');
                                  } on PlatformException catch (e) {
                                    if (context.mounted) {
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            l10n.couldNotOpenSettings(
                                              e.message ?? '',
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                  }
                                },
                              ),
                          ],
                          if (showCallLists) ...[
                            _SectionHeader(title: l10n.callListsSection),
                            if (showFavourites)
                              _SettingsTile(
                                icon: Icons.star_rate_rounded,
                                title: l10n.allFavourites,
                                subtitle: l10n.allFavouritesSubtitle,
                                onTap: () {
                                  Navigator.push<void>(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (_) => const FavouritesScreen(),
                                    ),
                                  );
                                },
                              ),
                            if (showBlocked)
                              _SettingsTile(
                                icon: Icons.block_rounded,
                                title: l10n.blockedNumbers,
                                subtitle: l10n.blockedNumbersSubtitle,
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) =>
                                          const BlockedNumbersScreen(),
                                    ),
                                  );
                                },
                              ),
                          ],
                          if (showContactsRecents) ...[
                            const SizedBox(height: 16),
                            _SectionHeader(
                              title: l10n.contactsAndRecentsSection,
                              trailing: GestureDetector(
                                onTap: _showContactsAndRecentsInfoDialog,
                                child: Icon(
                                  Icons.info_outline_rounded,
                                  color: scheme.outline,
                                  size: 20,
                                ),
                              ),
                            ),
                            if (showRecentsContacts)
                              _SettingsSwitchTile(
                                icon: Icons.person_search_rounded,
                                title: l10n.recentsSearchShowContacts,
                                value: _recentsSearchShowContacts,
                                onChanged: _saveRecentsSearchShowContacts,
                              ),
                            if (showFrequentMax)
                              _SettingsTile(
                                icon: Icons.format_list_numbered_rounded,
                                title: l10n.frequentlyContactedHeader,
                                subtitle: frequentMaxSubtitle,
                                onTap: _showFrequentMaxPicker,
                              ),
                            if (showFrequentPeriod)
                              _SettingsTile(
                                icon: Icons.date_range_rounded,
                                title: l10n.timePeriod,
                                subtitle: frequentPeriodSubtitle,
                                onTap: _showFrequentPeriodPicker,
                              ),
                          ],
                          if (showTorch) ...[
                            const SizedBox(height: 16),
                            _SectionHeader(
                              title: l10n.torchBlink,
                              trailing: GestureDetector(
                                onTap: _showTorchInfoDialog,
                                child: Icon(
                                  Icons.info_outline_rounded,
                                  color: scheme.outline,
                                  size: 20,
                                ),
                              ),
                            ),
                            if (showTorchIncoming)
                              _SettingsTile(
                                icon: Icons.flashlight_on_rounded,
                                title: l10n.torchIncomingCall,
                                subtitle: torchIncomingSubtitle,
                                onTap: _torchHasFlash
                                    ? _showTorchIncomingPicker
                                    : _noopTorch,
                              ),
                            if (showTorchIncomingInterval)
                              _SettingsTile(
                                icon: Icons.timer_rounded,
                                title: l10n.torchIncomingInterval,
                                subtitle: _torchIntervalSecondsLabel(
                                  _torchIncomingInterval,
                                ),
                                onTap: () =>
                                    _showTorchIntervalPicker('incoming'),
                              ),
                            if (showTorchOutgoing)
                              _SettingsTile(
                                icon: Icons.call_made_rounded,
                                title: l10n.torchOutgoingCall,
                                subtitle: torchOutgoingSubtitle,
                                onTap: _torchHasFlash
                                    ? _showTorchOutgoingPicker
                                    : _noopTorch,
                              ),
                            if (showTorchOutgoingInterval)
                              _SettingsTile(
                                icon: Icons.timer_rounded,
                                title: l10n.torchOutgoingInterval,
                                subtitle: _torchIntervalSecondsLabel(
                                  _torchOutgoingInterval,
                                ),
                                onTap: () =>
                                    _showTorchIntervalPicker('outgoing'),
                              ),
                            if (showTorchOngoing)
                              _SettingsTile(
                                icon: Icons.phone_in_talk_rounded,
                                title: l10n.torchOngoingCall,
                                subtitle: torchOngoingSubtitle,
                                onTap: _torchHasFlash
                                    ? _showTorchOngoingPicker
                                    : _noopTorch,
                              ),
                            if (showTorchOngoingInterval)
                              _SettingsTile(
                                icon: Icons.timer_rounded,
                                title: l10n.torchOngoingInterval,
                                subtitle: _torchIntervalSecondsLabel(
                                  _torchOngoingInterval,
                                ),
                                onTap: () =>
                                    _showTorchIntervalPicker('ongoing'),
                              ),
                          ],
                          if (showGlyph) ...[
                            const SizedBox(height: 24),
                            _SectionHeader(
                              title: l10n.glyphLights,
                              trailing: GestureDetector(
                                onTap: () => _showGlyphMapDialog(),
                                child: Icon(
                                  Icons.info_outline_rounded,
                                  color: scheme.outline,
                                  size: 20,
                                ),
                              ),
                            ),
                            if (showGlyphCalling)
                              _SettingsTile(
                                icon: Icons.flare_rounded,
                                title: l10n.glyphCallingAnimation,
                                subtitle: glyphCallingSubtitle,
                                onTap: () => _showGlyphAnimationStylePicker(),
                              ),
                            if (showGlyphBreath)
                              _SettingsTile(
                                icon: Icons.tune_rounded,
                                title: l10n.breathSettings,
                                subtitle: l10n.breathSettingsSpeedSummary(
                                  _customChannels.length,
                                  _customInterval,
                                ),
                                onTap: () => _showBreathSettingsPicker(),
                              ),
                            if (showGlyphSteady)
                              _SettingsTile(
                                icon: Icons.highlight_rounded,
                                title: l10n.activeLights,
                                subtitle: l10n.lightsCount(
                                  _customChannels.length,
                                ),
                                onTap: () =>
                                    _showActiveLightsPicker(isInCall: false),
                              ),
                            if (showGlyphSpeed)
                              _SettingsTile(
                                icon: Icons.timer_rounded,
                                title: l10n.speedSettings,
                                subtitle: l10n.speedSettingsDelay(
                                  _glyphC1C4Interval,
                                ),
                                onTap: () => _showC1C4SpeedPicker(
                                  isInCall: false,
                                  style: _glyphAnimationStyle,
                                ),
                              ),
                            if (showGlyphDuration)
                              _SettingsTile(
                                icon: Icons.speed_rounded,
                                title: l10n.durationAndSpeed,
                                subtitle: l10n.durationSpeedSummary(
                                  _glyphBreathProgressDuration ~/ 1000,
                                  _glyphBreathProgressInterval,
                                ),
                                onTap: () => _showBreathProgressSpeedPicker(
                                  isInCall: false,
                                ),
                              ),
                            if (showGlyphOngoing) ...[
                              const SizedBox(height: 24),
                              _SettingsTile(
                                icon: Icons.flare_rounded,
                                title: l10n.glyphOngoingAnimation,
                                subtitle: glyphOngoingSubtitle,
                                onTap: () => _showInCallAnimationStylePicker(),
                              ),
                            ],
                            if (showInCallBreath)
                              _SettingsTile(
                                icon: Icons.tune_rounded,
                                title: l10n.breathSettings,
                                subtitle: l10n.breathSettingsSpeedSummary(
                                  _inCallCustomChannels.length,
                                  _inCallCustomInterval,
                                ),
                                onTap: () => _showInCallBreathSettingsPicker(),
                              ),
                            if (showInCallSteady)
                              _SettingsTile(
                                icon: Icons.highlight_rounded,
                                title: l10n.activeLights,
                                subtitle: l10n.lightsCount(
                                  _inCallCustomChannels.length,
                                ),
                                onTap: () =>
                                    _showActiveLightsPicker(isInCall: true),
                              ),
                            if (showInCallSpeed)
                              _SettingsTile(
                                icon: Icons.timer_rounded,
                                title: l10n.speedSettings,
                                subtitle: l10n.speedSettingsDelay(
                                  _inCallC1C4Interval,
                                ),
                                onTap: () => _showC1C4SpeedPicker(
                                  isInCall: true,
                                  style: _inCallAnimationStyle,
                                ),
                              ),
                            if (showInCallDuration)
                              _SettingsTile(
                                icon: Icons.speed_rounded,
                                title: l10n.durationAndSpeed,
                                subtitle: l10n.durationSpeedSummary(
                                  _inCallBreathProgressDuration ~/ 1000,
                                  _inCallBreathProgressInterval,
                                ),
                                onTap: () => _showBreathProgressSpeedPicker(
                                  isInCall: true,
                                ),
                              ),
                          ],
                          if (showResetCustomization) ...[
                            const SizedBox(height: 16),
                            _SectionHeader(
                              title: l10n.resetCustomization,
                              trailing: GestureDetector(
                                onTap: _showResetCustomizationInfoDialog,
                                child: Icon(
                                  Icons.info_outline_rounded,
                                  color: scheme.outline,
                                  size: 20,
                                ),
                              ),
                            ),
                            _SettingsTile(
                              icon: Icons.restore_rounded,
                              title: l10n.reset,
                              subtitle: l10n.resetCustomizationSubtitle,
                              onTap: _showResetCustomizationConfirmDialog,
                            ),
                          ],
                          if (showAboutFeedback) ...[
                            const SizedBox(height: 16),
                            _SectionHeader(
                              title: l10n.aboutFeedbackSection,
                              trailing: showGithubTile
                                  ? GestureDetector(
                                      onTap: _showAboutContributionInfoDialog,
                                      child: Icon(
                                        Icons.info_outline_rounded,
                                        color: scheme.outline,
                                        size: 20,
                                      ),
                                    )
                                  : null,
                            ),
                            if (showReviewTile)
                              _SettingsTile(
                                icon: Icons.star_rate_rounded,
                                title: l10n.reviewRateOnPlay,
                                subtitle: l10n.reviewRateOnPlaySubtitle,
                                onTap: () => _requestPlayStoreReview(l10n),
                              ),
                            if (showGithubTile)
                              _SettingsTile(
                                icon: Icons.code_rounded,
                                title: l10n.aboutViewSource,
                                subtitle: l10n.aboutRepositoryHost,
                                onTap: () => _openAboutRepository(l10n),
                              ),
                          ],
                          const SizedBox(height: 32),
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _requestPlayStoreReview(AppLocalizations l10n) async {
    final ok = await PlayStoreReview.openStoreListing();
    if (!ok && mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(l10n.reviewCouldNotOpen)));
    }
  }

  Future<void> _openAboutRepository(AppLocalizations l10n) async {
    final uri = Uri.parse(_kRepositoryUrl);
    final opened = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!opened && mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(l10n.aboutCouldNotOpenLink)));
    }
  }

  void _noopTorch() {
    if (!mounted) return;
    final l10n = AppLocalizations.of(context);
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(l10n.flashlightUnavailable)));
  }

  void _showBreathSettingsPicker() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => SettingsPickerFontScope(
        child: StatefulBuilder(
          builder: (context, setModalState) {
            final l10n = AppLocalizations.of(context);
            return Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
              ),
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 32,
                          height: 4,
                          margin: EdgeInsets.only(bottom: 24),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.outlineVariant,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      Text(
                        l10n.breathSettings,
                        style: context.dialerTextStyle(
                          DialerFontRole.pageTitle,
                          TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        l10n.breathSpeed,
                        style: context.dialerTextStyle(
                          DialerFontRole.secondary,
                          TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: Slider(
                              value: _customInterval.toDouble(),
                              min: 100,
                              max: 3000,
                              divisions: 29,
                              activeColor: Theme.of(
                                context,
                              ).colorScheme.primary,
                              onChanged: (val) {
                                setModalState(
                                  () => _customInterval = val.toInt(),
                                );
                                setState(() => _customInterval = val.toInt());
                              },
                              onChangeEnd: (val) async {
                                final prefs =
                                    await SharedPreferences.getInstance();
                                await prefs.setInt(
                                  'glyph_custom_interval',
                                  val.toInt(),
                                );
                                main_app.glyphCustomIntervalNotifier.value = val
                                    .toInt();
                              },
                            ),
                          ),
                          SizedBox(
                            width: 50,
                            child: Text(
                              '${_customInterval}ms',
                              style: context.dialerTextStyle(
                                DialerFontRole.secondary,
                                TextStyle(
                                  color: Theme.of(context).colorScheme.outline,
                                  fontSize: 12,
                                ),
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16, bottom: 24),
                        child: Text(
                          l10n.breathSpeedBlinkHint,
                          style: context.dialerTextStyle(
                            DialerFontRole.secondary,
                            TextStyle(
                              color: Theme.of(context).colorScheme.outline,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        l10n.activeLights,
                        style: context.dialerTextStyle(
                          DialerFontRole.secondary,
                          TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: ['A1', 'B1', 'C-All', 'D-All', 'E1'].map((
                          channel,
                        ) {
                          final isSelected = _customChannels.contains(channel);
                          return FilterChip(
                            label: Text(
                              channel,
                              style: context.dialerTextStyle(
                                DialerFontRole.secondary,
                                TextStyle(
                                  color: isSelected
                                      ? Theme.of(context).colorScheme.onPrimary
                                      : Theme.of(
                                          context,
                                        ).colorScheme.onSurfaceVariant,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            selected: isSelected,
                            checkmarkColor: Theme.of(
                              context,
                            ).colorScheme.onPrimary,
                            selectedColor: Theme.of(
                              context,
                            ).colorScheme.primary,
                            backgroundColor: Theme.of(
                              context,
                            ).colorScheme.surfaceContainer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            onSelected: (selected) async {
                              setModalState(() {
                                if (selected) {
                                  _customChannels.add(channel);
                                } else {
                                  if (_customChannels.length > 1) {
                                    _customChannels.remove(channel);
                                  }
                                }
                              });
                              setState(() {}); // Update main screen subtitle
                              final prefs =
                                  await SharedPreferences.getInstance();
                              await prefs.setStringList(
                                'glyph_custom_channels',
                                _customChannels,
                              );
                              main_app.glyphCustomChannelsNotifier.value =
                                  List.from(_customChannels);
                            },
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _showActiveLightsPicker({required bool isInCall}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => SettingsPickerFontScope(
        child: StatefulBuilder(
          builder: (context, setModalState) {
            final l10n = AppLocalizations.of(context);
            final channels = isInCall ? _inCallCustomChannels : _customChannels;
            return Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 32,
                          height: 4,
                          margin: const EdgeInsets.only(bottom: 24),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.outlineVariant,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      Text(
                        l10n.activeLights,
                        style: context.dialerTextStyle(
                          DialerFontRole.pageTitle,
                          TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: ['A1', 'B1', 'C-All', 'D-All', 'E1'].map((
                          channel,
                        ) {
                          final isSelected = channels.contains(channel);
                          return FilterChip(
                            label: Text(
                              channel,
                              style: context.dialerTextStyle(
                                DialerFontRole.secondary,
                                TextStyle(
                                  color: isSelected
                                      ? Theme.of(context).colorScheme.onPrimary
                                      : Theme.of(
                                          context,
                                        ).colorScheme.onSurfaceVariant,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            selected: isSelected,
                            checkmarkColor: Theme.of(
                              context,
                            ).colorScheme.onPrimary,
                            selectedColor: Theme.of(
                              context,
                            ).colorScheme.primary,
                            backgroundColor: Theme.of(
                              context,
                            ).colorScheme.surfaceContainer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            onSelected: (selected) async {
                              setModalState(() {
                                if (isInCall) {
                                  if (selected) {
                                    _inCallCustomChannels.add(channel);
                                  } else if (_inCallCustomChannels.length > 1) {
                                    _inCallCustomChannels.remove(channel);
                                  }
                                } else {
                                  if (selected) {
                                    _customChannels.add(channel);
                                  } else if (_customChannels.length > 1) {
                                    _customChannels.remove(channel);
                                  }
                                }
                              });
                              setState(() {});
                              final prefs =
                                  await SharedPreferences.getInstance();
                              if (isInCall) {
                                await prefs.setStringList(
                                  'in_call_custom_channels',
                                  _inCallCustomChannels,
                                );
                                main_app.inCallCustomChannelsNotifier.value =
                                    List.from(_inCallCustomChannels);
                              } else {
                                await prefs.setStringList(
                                  'glyph_custom_channels',
                                  _customChannels,
                                );
                                main_app.glyphCustomChannelsNotifier.value =
                                    List.from(_customChannels);
                              }
                            },
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _showInCallBreathSettingsPicker() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => SettingsPickerFontScope(
        child: StatefulBuilder(
          builder: (context, setModalState) {
            final l10n = AppLocalizations.of(context);
            return Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
              ),
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 32,
                          height: 4,
                          margin: EdgeInsets.only(bottom: 24),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.outlineVariant,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      Text(
                        l10n.breathSettings,
                        style: context.dialerTextStyle(
                          DialerFontRole.pageTitle,
                          TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        l10n.breathSpeed,
                        style: context.dialerTextStyle(
                          DialerFontRole.secondary,
                          TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: Slider(
                              value: _inCallCustomInterval.toDouble(),
                              min: 100,
                              max: 3000,
                              divisions: 29,
                              activeColor: Theme.of(
                                context,
                              ).colorScheme.primary,
                              onChanged: (val) {
                                setModalState(
                                  () => _inCallCustomInterval = val.toInt(),
                                );
                                setState(
                                  () => _inCallCustomInterval = val.toInt(),
                                );
                              },
                              onChangeEnd: (val) async {
                                final prefs =
                                    await SharedPreferences.getInstance();
                                await prefs.setInt(
                                  'in_call_custom_interval',
                                  val.toInt(),
                                );
                                main_app.inCallCustomIntervalNotifier.value =
                                    val.toInt();
                              },
                            ),
                          ),
                          SizedBox(
                            width: 50,
                            child: Text(
                              '${_inCallCustomInterval}ms',
                              style: context.dialerTextStyle(
                                DialerFontRole.secondary,
                                TextStyle(
                                  color: Theme.of(context).colorScheme.outline,
                                  fontSize: 12,
                                ),
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16, bottom: 24),
                        child: Text(
                          l10n.breathSpeedBlinkHint,
                          style: context.dialerTextStyle(
                            DialerFontRole.secondary,
                            TextStyle(
                              color: Theme.of(context).colorScheme.outline,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        l10n.activeLights,
                        style: context.dialerTextStyle(
                          DialerFontRole.secondary,
                          TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: ['A1', 'B1', 'C-All', 'D-All', 'E1'].map((
                          channel,
                        ) {
                          final isSelected = _inCallCustomChannels.contains(
                            channel,
                          );
                          return FilterChip(
                            label: Text(
                              channel,
                              style: context.dialerTextStyle(
                                DialerFontRole.secondary,
                                TextStyle(
                                  color: isSelected
                                      ? Theme.of(context).colorScheme.onPrimary
                                      : Theme.of(
                                          context,
                                        ).colorScheme.onSurfaceVariant,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            selected: isSelected,
                            checkmarkColor: Theme.of(
                              context,
                            ).colorScheme.onPrimary,
                            selectedColor: Theme.of(
                              context,
                            ).colorScheme.primary,
                            backgroundColor: Theme.of(
                              context,
                            ).colorScheme.surfaceContainer,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            onSelected: (selected) async {
                              setModalState(() {
                                if (selected) {
                                  _inCallCustomChannels.add(channel);
                                } else {
                                  if (_inCallCustomChannels.length > 1) {
                                    _inCallCustomChannels.remove(channel);
                                  }
                                }
                              });
                              setState(() {}); // Update main screen subtitle
                              final prefs =
                                  await SharedPreferences.getInstance();
                              await prefs.setStringList(
                                'in_call_custom_channels',
                                _inCallCustomChannels,
                              );
                              main_app.inCallCustomChannelsNotifier.value =
                                  List.from(_inCallCustomChannels);
                            },
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _showAnswerMethodPicker() {
    final l10n = AppLocalizations.of(context);
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => SettingsPickerFontScope(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(sheetContext).colorScheme.surface,
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
                    padding: EdgeInsets.only(top: 16, bottom: 8),
                    child: Container(
                      width: 32,
                      height: 4,
                      decoration: BoxDecoration(
                        color: Theme.of(
                          sheetContext,
                        ).colorScheme.outlineVariant,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 16, 24, 8),
                  child: Text(
                    l10n.answerMethodTitle,
                    style: sheetContext.dialerTextStyle(
                      DialerFontRole.pageTitle,
                      TextStyle(
                        color: Theme.of(sheetContext).colorScheme.onSurface,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SettingsPickerOption(
                  icon: Icons.swipe_rounded,
                  label: l10n.answerSlide,
                  subtitle: l10n.answerSlideSubtitle,
                  selected: _answerMethod == 'slide',
                  onTap: () {
                    _saveAnswerMethod('slide');
                    Navigator.pop(sheetContext);
                  },
                ),
                SettingsPickerOption(
                  icon: Icons.touch_app_rounded,
                  label: l10n.answerButton,
                  subtitle: l10n.answerButtonSubtitle,
                  selected: _answerMethod == 'button',
                  onTap: () {
                    _saveAnswerMethod('button');
                    Navigator.pop(sheetContext);
                  },
                ),
                SettingsPickerOption(
                  icon: Icons.drag_handle_rounded,
                  label: l10n.answerHuawei,
                  subtitle: l10n.answerHuaweiSubtitle,
                  selected: _answerMethod == 'huawei',
                  onTap: () {
                    _saveAnswerMethod('huawei');
                    Navigator.pop(sheetContext);
                  },
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showGlyphAnimationStylePicker() {
    _showGlyphStylePickerSheet(
      title: AppLocalizations.of(context).glyphOutgoingCallStyleTitle,
      selected: _glyphAnimationStyle,
      inCall: false,
      save: _saveGlyphAnimationStyle,
      syncNotifiers: importMainAndUpdate,
    );
  }

  void _showInCallAnimationStylePicker() {
    _showGlyphStylePickerSheet(
      title: AppLocalizations.of(context).glyphInCallAnimationTitle,
      selected: _inCallAnimationStyle,
      inCall: true,
      save: _saveInCallAnimationStyle,
      syncNotifiers: importMainAndInCallUpdate,
    );
  }

  void _showBreathProgressSpeedPicker({required bool isInCall}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => SettingsPickerFontScope(
        child: StatefulBuilder(
          builder: (context, setModalState) {
            final l10n = AppLocalizations.of(context);
            final currentInterval = isInCall
                ? _inCallC1C4Interval
                : _glyphC1C4Interval;
            return Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 32,
                          height: 4,
                          margin: const EdgeInsets.only(bottom: 24),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.outlineVariant,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      Text(
                        l10n.speedSettings,
                        style: context.dialerTextStyle(
                          DialerFontRole.pageTitle,
                          TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        l10n.animationDelayRange,
                        style: context.dialerTextStyle(
                          DialerFontRole.secondary,
                          TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: Slider(
                              value: currentInterval.toDouble().clamp(
                                1000,
                                10000,
                              ),
                              min: 1000,
                              max: 10000,
                              divisions: 90,
                              activeColor: Theme.of(
                                context,
                              ).colorScheme.primary,
                              onChanged: (val) {
                                setModalState(() {
                                  if (isInCall) {
                                    _inCallC1C4Interval = val.toInt();
                                  } else {
                                    _glyphC1C4Interval = val.toInt();
                                  }
                                });
                                setState(() {});
                              },
                              onChangeEnd: (val) {
                                if (isInCall) {
                                  _saveInCallC1C4Interval(val.toInt());
                                } else {
                                  _saveGlyphC1C4Interval(val.toInt());
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            width: 50,
                            child: Text(
                              '${(currentInterval / 1000).toStringAsFixed(1)}s',
                              style: context.dialerTextStyle(
                                DialerFontRole.secondary,
                                TextStyle(
                                  color: Theme.of(context).colorScheme.outline,
                                  fontSize: 12,
                                ),
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16, bottom: 24),
                        child: Text(
                          l10n.speedSliderHint,
                          style: context.dialerTextStyle(
                            DialerFontRole.secondary,
                            TextStyle(
                              color: Theme.of(context).colorScheme.outline,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: TextButton(
                          onPressed: () => Navigator.pop(sheetContext),
                          child: Text(
                            l10n.done,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _showC1C4SpeedPicker({required bool isInCall, required String style}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => SettingsPickerFontScope(
        child: StatefulBuilder(
          builder: (context, setModalState) {
            final l10n = AppLocalizations.of(context);
            final currentInterval = isInCall
                ? _inCallC1C4Interval
                : _glyphC1C4Interval;
            final isSingle = style == 'Single';
            final minInterval = isSingle ? 100.0 : 1000.0;
            final maxInterval = 10000.0;
            final divisions = isSingle ? 99 : 90;
            return Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
              ),
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 32,
                          height: 4,
                          margin: EdgeInsets.only(bottom: 24),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.outlineVariant,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      Text(
                        l10n.speedSettings,
                        style: context.dialerTextStyle(
                          DialerFontRole.pageTitle,
                          TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        isSingle
                            ? l10n.animationDelayRangeSingle
                            : l10n.animationDelayRange,
                        style: context.dialerTextStyle(
                          DialerFontRole.secondary,
                          TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            child: Slider(
                              value: currentInterval.toDouble().clamp(
                                minInterval,
                                maxInterval,
                              ),
                              min: minInterval,
                              max: maxInterval,
                              divisions: divisions,
                              activeColor: Theme.of(
                                context,
                              ).colorScheme.primary,
                              onChanged: (val) {
                                setModalState(() {
                                  if (isInCall) {
                                    _inCallC1C4Interval = val.toInt();
                                  } else {
                                    _glyphC1C4Interval = val.toInt();
                                  }
                                });
                                setState(() {});
                              },
                              onChangeEnd: (val) {
                                if (isInCall) {
                                  _saveInCallC1C4Interval(val.toInt());
                                } else {
                                  _saveGlyphC1C4Interval(val.toInt());
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            width: 50,
                            child: Text(
                              '${(currentInterval / 1000).toStringAsFixed(1)}s',
                              style: context.dialerTextStyle(
                                DialerFontRole.secondary,
                                TextStyle(
                                  color: Theme.of(context).colorScheme.outline,
                                  fontSize: 12,
                                ),
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16, bottom: 24),
                        child: Text(
                          l10n.speedSliderHint,
                          style: context.dialerTextStyle(
                            DialerFontRole.secondary,
                            TextStyle(
                              color: Theme.of(context).colorScheme.outline,
                              fontSize: 11,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Center(
                        child: TextButton(
                          onPressed: () => Navigator.pop(sheetContext),
                          child: Text(
                            l10n.done,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _showThemeModePicker() {
    final l10n = AppLocalizations.of(context);
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => SettingsPickerFontScope(
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(sheetContext).colorScheme.surface,
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
                        color: Theme.of(
                          sheetContext,
                        ).colorScheme.outlineVariant,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(24, 16, 24, 8),
                  child: Text(
                    l10n.themePickerTitle,
                    style: sheetContext.dialerTextStyle(
                      DialerFontRole.pageTitle,
                      TextStyle(
                        color: Theme.of(sheetContext).colorScheme.onSurface,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SettingsPickerOption(
                  icon: Icons.brightness_auto_rounded,
                  label: l10n.themeSystemDefault,
                  subtitle: l10n.themeFollowSystem,
                  selected: _themeMode == 'system',
                  onTap: () {
                    _saveThemeMode('system');
                    Navigator.pop(sheetContext);
                  },
                ),
                SettingsPickerOption(
                  icon: Icons.light_mode_rounded,
                  label: l10n.themeLight,
                  subtitle: l10n.themeAlwaysLight,
                  selected: _themeMode == 'light',
                  onTap: () {
                    _saveThemeMode('light');
                    Navigator.pop(sheetContext);
                  },
                ),
                SettingsPickerOption(
                  icon: Icons.dark_mode_rounded,
                  label: l10n.themeDark,
                  subtitle: l10n.themeAlwaysDark,
                  selected: _themeMode == 'dark',
                  onTap: () {
                    _saveThemeMode('dark');
                    Navigator.pop(sheetContext);
                  },
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showResetCustomizationInfoDialog() {
    final l10n = AppLocalizations.of(context);
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Theme.of(context).colorScheme.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.resetCustomizationInfoTitle,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                l10n.resetCustomizationInfoBody,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  fontSize: 15,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    l10n.close,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showResetCustomizationConfirmDialog() async {
    final l10n = AppLocalizations.of(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => Dialog(
        backgroundColor: Theme.of(ctx).colorScheme.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.resetCustomizationConfirmTitle,
                style: TextStyle(
                  color: Theme.of(ctx).colorScheme.onSurface,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                l10n.resetCustomizationConfirmBody,
                style: TextStyle(
                  color: Theme.of(ctx).colorScheme.onSurfaceVariant,
                  fontSize: 15,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () => Navigator.pop(ctx, false),
                      child: Text(
                        l10n.cancel,
                        style: TextStyle(
                          color: Theme.of(ctx).colorScheme.primary,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () => Navigator.pop(ctx, true),
                      child: Text(
                        l10n.reset,
                        style: TextStyle(
                          color: Theme.of(ctx).colorScheme.error,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    if (confirmed != true || !mounted) return;

    final simIndices = _simCards.map((s) => s.index);
    await resetAppearanceCustomizationToDefaults(simIndices: simIndices);
    if (!mounted) return;
    await _loadSettings();
    if (!mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(l10n.resetCustomizationDone)));
  }

  void _showContactsAndRecentsInfoDialog() {
    final l10n = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: scheme.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.contactsAndRecentsSection,
                style: TextStyle(
                  color: scheme.onSurface,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                l10n.recentsSearchShowContacts,
                style: TextStyle(
                  color: scheme.onSurface,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                l10n.recentsSearchShowContactsSubtitle,
                style: TextStyle(
                  color: scheme.onSurfaceVariant,
                  fontSize: 15,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                l10n.frequentlyContacted,
                style: TextStyle(
                  color: scheme.onSurface,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                l10n.frequentlyContactedInfoBody,
                style: TextStyle(
                  color: scheme.onSurfaceVariant,
                  fontSize: 15,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    l10n.close,
                    style: TextStyle(color: scheme.primary),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showAboutContributionInfoDialog() {
    final l10n = AppLocalizations.of(context);
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Theme.of(context).colorScheme.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.aboutViewSource,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                l10n.aboutDescription,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  fontSize: 15,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    l10n.close,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showGlyphMapDialog() {
    final l10n = AppLocalizations.of(context);
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Theme.of(context).colorScheme.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                l10n.glyphMapTitle,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              Text(
                l10n.glyphMapBody,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  fontSize: 15,
                  height: 1.4,
                ),
              ),
              SizedBox(height: 16),
              Image.asset(
                'assets/images/np1-layout.png',
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return SizedBox(
                    height: 300,
                    child: Center(
                      child: Text(
                        l10n.glyphMapUnavailable,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  l10n.close,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showTorchInfoDialog() {
    final l10n = AppLocalizations.of(context);
    showDialog<void>(
      context: context,
      builder: (ctx) => Dialog(
        backgroundColor: Theme.of(ctx).colorScheme.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.torchInfoTitle,
                style: TextStyle(
                  color: Theme.of(ctx).colorScheme.onSurface,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                l10n.torchInfoBody,
                style: TextStyle(
                  color: Theme.of(ctx).colorScheme.onSurfaceVariant,
                  fontSize: 15,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: TextButton(
                  onPressed: () => Navigator.pop(ctx),
                  child: Text(
                    l10n.close,
                    style: TextStyle(color: Theme.of(ctx).colorScheme.primary),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showTorchIncomingPicker() {
    _showTorchModePickerSheet(
      title: AppLocalizations.of(context).torchIncomingCall,
      currentMode: _torchIncomingMode,
      incoming: true,
      ongoing: false,
      save: _saveTorchIncomingMode,
    );
  }

  void _showTorchOutgoingPicker() {
    _showTorchModePickerSheet(
      title: AppLocalizations.of(context).torchOutgoingCall,
      currentMode: _torchOutgoingMode,
      incoming: false,
      ongoing: false,
      save: _saveTorchOutgoingMode,
    );
  }

  void _showTorchOngoingPicker() {
    _showTorchModePickerSheet(
      title: AppLocalizations.of(context).torchOngoingCall,
      currentMode: _torchOngoingMode,
      incoming: false,
      ongoing: true,
      save: _saveTorchOngoingMode,
    );
  }

  void _showTorchIntervalPicker(String kind) {
    final l10n = AppLocalizations.of(context);
    var currentMs = switch (kind) {
      'incoming' => _torchIncomingInterval,
      'outgoing' => _torchOutgoingInterval,
      _ => _torchOngoingInterval,
    };
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => SettingsPickerFontScope(
        child: StatefulBuilder(
          builder: (context, setModalState) {
            final currentSec = (currentMs / 1000.0).clamp(0.1, 3.0);
            return Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(28),
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: 32,
                          height: 4,
                          margin: const EdgeInsets.only(bottom: 24),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.outlineVariant,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
                      Text(
                        l10n.blinkInterval,
                        style: context.dialerTextStyle(
                          DialerFontRole.pageTitle,
                          TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                            child: Slider(
                              value: currentSec,
                              min: 0.1,
                              max: 3.0,
                              divisions: 29,
                              activeColor: Theme.of(
                                context,
                              ).colorScheme.primary,
                              onChanged: (sec) {
                                final ms = (sec * 1000).round().clamp(
                                  100,
                                  3000,
                                );
                                setModalState(() => currentMs = ms);
                                setState(() {
                                  if (kind == 'incoming') {
                                    _torchIncomingInterval = ms;
                                  } else if (kind == 'outgoing') {
                                    _torchOutgoingInterval = ms;
                                  } else {
                                    _torchOngoingInterval = ms;
                                  }
                                });
                              },
                              onChangeEnd: (sec) {
                                final ms = (sec * 1000).round().clamp(
                                  100,
                                  3000,
                                );
                                if (kind == 'incoming') {
                                  _saveTorchIncomingInterval(ms);
                                } else if (kind == 'outgoing') {
                                  _saveTorchOutgoingInterval(ms);
                                } else {
                                  _saveTorchOngoingInterval(ms);
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            width: 64,
                            child: Text(
                              _torchIntervalSecondsLabel(currentMs),
                              style: context.dialerTextStyle(
                                DialerFontRole.secondary,
                                TextStyle(
                                  color: Theme.of(context).colorScheme.outline,
                                  fontSize: 12,
                                ),
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Center(
                        child: TextButton(
                          onPressed: () => Navigator.pop(sheetContext),
                          child: Text(
                            l10n.done,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// Ensure the main.dart notifier gets updated live if settings is open while a call comes in
void importMainAndUpdate(String style) {
  try {
    main_app.glyphAnimationStyleNotifier.value = style;
  } catch (e) {
    print('Dialer: Error updating main notifier - $e');
  }
}

void importMainAndInCallUpdate(String style) {
  try {
    main_app.inCallAnimationStyleNotifier.value = style;
  } catch (e) {
    print('Dialer: Error updating in-call notifier - $e');
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  final Widget? trailing;

  const _SectionHeader({required this.title, this.trailing});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(24, 24, 24, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title.toUpperCase(),
            style: context.dialerTextStyle(
              DialerFontRole.sectionHeader,
              TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 12,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2,
              ),
            ),
          ),
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final Color? previewColor;

  _SettingsTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.previewColor,
  });

  @override
  Widget build(BuildContext context) {
    final Color leadingIconColor;
    if (previewColor != null) {
      leadingIconColor =
          ThemeData.estimateBrightnessForColor(previewColor!) == Brightness.dark
          ? Colors.white.withValues(alpha: 0.92)
          : const Color(0xFF1C1B1F).withValues(alpha: 0.82);
    } else {
      leadingIconColor = Theme.of(context).colorScheme.onSurface;
    }

    final Widget leading = previewColor != null
        ? ClipOval(
            child: Container(
              width: 40,
              height: 40,
              color: previewColor,
              alignment: Alignment.center,
              child: Icon(icon, color: leadingIconColor, size: 20),
            ),
          )
        : SizedBox(
            width: 40,
            height: 40,
            child: Icon(icon, color: leadingIconColor, size: 22),
          );

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            children: [
              leading,
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: context.dialerTextStyle(
                        DialerFontRole.primary,
                        TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    if (subtitle.isNotEmpty) ...[
                      SizedBox(height: 2),
                      Text(
                        subtitle,
                        style: context.dialerTextStyle(
                          DialerFontRole.secondary,
                          TextStyle(
                            color: Theme.of(
                              context,
                            ).colorScheme.onSurfaceVariant,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SettingsSwitchTile extends StatelessWidget {
  const _SettingsSwitchTile({
    required this.icon,
    required this.title,
    this.subtitle = '',
    required this.value,
    required this.onChanged,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => onChanged(!value),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: Icon(icon, color: scheme.onSurface, size: 22),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: context.dialerTextStyle(
                        DialerFontRole.primary,
                        TextStyle(
                          color: scheme.onSurface,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    if (subtitle.isNotEmpty) ...[
                      const SizedBox(height: 2),
                      Text(
                        subtitle,
                        style: context.dialerTextStyle(
                          DialerFontRole.secondary,
                          TextStyle(
                            color: scheme.onSurfaceVariant,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              Switch.adaptive(value: value, onChanged: onChanged),
            ],
          ),
        ),
      ),
    );
  }
}

class _ColorSwatchButton extends StatelessWidget {
  const _ColorSwatchButton({
    required this.color,
    required this.selected,
    required this.onTap,
    this.label,
  });

  final Color color;
  final bool selected;
  final VoidCallback onTap;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          color: color,
          shape: CircleBorder(
            side: BorderSide(
              color: selected
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.outlineVariant,
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
        ),
        if (label != null) ...[
          const SizedBox(height: 4),
          Text(
            label!,
            style: context.dialerTextStyle(
              DialerFontRole.secondary,
              TextStyle(
                fontSize: 11,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        ],
      ],
    );
  }
}

class _CustomColorSwatchButton extends StatelessWidget {
  const _CustomColorSwatchButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          color: Colors.transparent,
          shape: CircleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.outlineVariant,
              width: 1.5,
            ),
          ),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: onTap,
            customBorder: const CircleBorder(),
            child: Ink(
              decoration: const ShapeDecoration(
                shape: CircleBorder(),
                gradient: SweepGradient(
                  colors: [
                    Colors.red,
                    Colors.deepOrange,
                    Colors.amber,
                    Colors.green,
                    Colors.cyan,
                    Colors.blue,
                    Colors.purple,
                    Colors.red,
                  ],
                ),
              ),
              child: const SizedBox(
                width: 48,
                height: 48,
                child: Center(
                  child: Icon(
                    Icons.colorize_rounded,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          AppLocalizations.of(context).custom,
          style: context.dialerTextStyle(
            DialerFontRole.secondary,
            TextStyle(
              fontSize: 11,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ],
    );
  }
}
