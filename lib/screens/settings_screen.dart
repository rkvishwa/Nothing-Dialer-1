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

enum _ColorSlot { background, accent }
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
  String _answerMethod = 'slide'; // 'slide' or 'button'
  String _themeMode = 'system'; // 'system', 'light', 'dark'
  Color _lightBgColor = kDefaultLightBg;
  Color _darkBgColor = kDefaultDarkBg;
  Color _lightAccentColor = kDefaultLightAccent;
  Color _darkAccentColor = kDefaultDarkAccent;

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

  String _defaultSimMode = kDefaultSimModeAsk;
  int? _defaultSimIndex;

  bool _torchHasFlash = true;
  String _launcherIconLabel = LauncherIconVariant.classic.label;
  String _torchIncomingMode = 'off';
  int _torchIncomingInterval = 500;
  String _torchOutgoingMode = 'off';
  int _torchOutgoingInterval = 500;
  String _torchOngoingMode = 'off';
  int _torchOngoingInterval = 500;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _loadSettings();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
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
    setState(() {
      _themeMode = prefs.getString('theme_mode') ?? 'system';
      _lightBgColor = Color(
        prefs.getInt('light_bg_color') ?? colorToArgb32(kDefaultLightBg),
      );
      _darkBgColor = Color(
        prefs.getInt('dark_bg_color') ?? colorToArgb32(kDefaultDarkBg),
      );
      _lightAccentColor = Color(
        prefs.getInt('light_accent_color') ?? colorToArgb32(kDefaultLightAccent),
      );
      _darkAccentColor = Color(
        prefs.getInt('dark_accent_color') ?? colorToArgb32(kDefaultDarkAccent),
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

      _defaultSimMode = prefs.getString(kDefaultSimModeKey) ?? kDefaultSimModeAsk;
      _defaultSimIndex = prefs.getInt(kDefaultSimIndexKey);

      _torchHasFlash = torchFlash;
      _torchIncomingMode = torchIncomingMode;
      _torchIncomingInterval =
          (prefs.getInt('torch_incoming_interval') ?? 500).clamp(100, 3000);
      _torchOutgoingMode = prefs.getString('torch_outgoing_mode') ?? 'off';
      _torchOutgoingInterval =
          (prefs.getInt('torch_outgoing_interval') ?? 500).clamp(100, 3000);
      _torchOngoingMode = prefs.getString('torch_ongoing_mode') ?? 'off';
      _torchOngoingInterval =
          (prefs.getInt('torch_ongoing_interval') ?? 500).clamp(100, 3000);
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
  }

  String _defaultSimSubtitle() {
    if (_defaultSimMode == kDefaultSimModeAsk) {
      return 'Ask every time';
    }
    final idx = _defaultSimIndex;
    if (idx == null) return 'Ask every time';
    return 'SIM ${idx + 1}';
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

  String _torchIncomingSubtitle() {
    if (!_torchHasFlash) return 'Flashlight not available on this device';
    switch (_torchIncomingMode) {
      case 'interval':
        return '${_torchIntervalSecondsLabel(_torchIncomingInterval)} blink';
      default:
        return 'Off';
    }
  }

  String _torchOutgoingSubtitle() {
    if (!_torchHasFlash) return 'Flashlight not available on this device';
    if (_torchOutgoingMode == 'interval') {
      return '${_torchIntervalSecondsLabel(_torchOutgoingInterval)} blink';
    }
    return 'Off';
  }

  String _torchOngoingSubtitle() {
    if (!_torchHasFlash) return 'Flashlight not available on this device';
    if (_torchOngoingMode == 'interval') {
      return '${_torchIntervalSecondsLabel(_torchOngoingInterval)} blink';
    }
    return 'Off';
  }

  Future<void> _showDefaultSimPicker() async {
    try {
      final raw = await const MethodChannel(
        'nothing_dialer/control',
      ).invokeMethod<List<dynamic>>('getSimCards');
      if (!mounted) return;
      if (raw == null || raw.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('No SIM cards found')),
        );
        return;
      }
      final sims = raw.cast<Map<dynamic, dynamic>>();
      await showModalBottomSheet<void>(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (sheetContext) => Container(
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
                    'Default SIM for calls',
                    style: TextStyle(
                      color: Theme.of(sheetContext).colorScheme.onSurface,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                  title: const Text('Ask every time'),
                  subtitle: const Text('Show SIM picker before each call'),
                  onTap: () async {
                    await _saveDefaultSim(mode: kDefaultSimModeAsk);
                    if (sheetContext.mounted) Navigator.pop(sheetContext);
                  },
                ),
                ...sims.asMap().entries.map((e) {
                  final idx = e.key;
                  final sim = e.value;
                  final label = sim['label'] as String? ?? 'SIM ${idx + 1}';
                  final slot = (sim['slot'] as int?) ?? (idx + 1);
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                    title: Text(label),
                    subtitle: Text('SIM $slot'),
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
      );
    } on PlatformException catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Could not load SIMs: ${e.message}')),
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

  String _frequentMaxSubtitle() {
    if (_frequentContactsMax == 0) return 'Off';
    if (_frequentContactsMax == 1) return '1 contact';
    return 'Up to ${_frequentContactsMax} contacts';
  }

  String _frequentPeriodSubtitle() {
    switch (_frequentContactsPeriod) {
      case 'day':
        return 'Last 24 hours';
      case 'week':
        return 'Last 7 days';
      case 'month':
        return 'Last 30 days';
      case 'year':
        return 'Last 12 months';
      case 'all':
        return 'All time';
      default:
        return 'Last 12 months';
    }
  }

  void _showFrequentPeriodPicker() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => Container(
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
                padding: EdgeInsets.fromLTRB(24, 16, 24, 8),
                child: Text(
                  'Time period',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              _MethodOption(
                icon: Icons.today_rounded,
                label: 'Last 24 hours',
                subtitle: 'Calls from the past day',
                selected: _frequentContactsPeriod == 'day',
                onTap: () {
                  _saveFrequentContactsPeriod('day');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.date_range_rounded,
                label: 'Last 7 days',
                subtitle: 'Calls from the past week',
                selected: _frequentContactsPeriod == 'week',
                onTap: () {
                  _saveFrequentContactsPeriod('week');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.calendar_month_rounded,
                label: 'Last 30 days',
                subtitle: 'Calls from the past month',
                selected: _frequentContactsPeriod == 'month',
                onTap: () {
                  _saveFrequentContactsPeriod('month');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.calendar_today_rounded,
                label: 'Last 12 months',
                subtitle: 'Calls from the past year',
                selected: _frequentContactsPeriod == 'year',
                onTap: () {
                  _saveFrequentContactsPeriod('year');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.all_inclusive_rounded,
                label: 'All time',
                subtitle: 'Entire call history',
                selected: _frequentContactsPeriod == 'all',
                onTap: () {
                  _saveFrequentContactsPeriod('all');
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  void _showFrequentMaxPicker() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) {
          return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
                      'Number of records',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Set to 0 to hide the section. Otherwise choose how many numbers appear at the top of Recents.',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                          child: Slider(
                            value: _frequentContactsMax
                                .toDouble()
                                .clamp(0, 20),
                            min: 0,
                            max: 20,
                            divisions: 20,
                            activeColor: Theme.of(context).colorScheme.primary,
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
                                ? 'Off'
                                : '${_frequentContactsMax}',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.outline,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          'Done',
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
    );
  }

  Future<void> _saveAnswerMethod(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('answer_method', value);
    setState(() => _answerMethod = value);
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

  String _hexRgb(Color c) {
    final v = c.toARGB32() & 0xFFFFFF;
    return '#${v.toRadixString(16).padLeft(6, '0').toUpperCase()}';
  }

  String _bgSubtitle(Color c, List<Color> presets) {
    final idx = presets.indexWhere((p) => colorsEqual(p, c));
    final hex = _hexRgb(c);
    if (idx >= 0) return 'Preset · $hex';
    return 'Custom · $hex';
  }

  String _accentSubtitle(Color c) {
    final idx = kAccentPresets.indexWhere((p) => colorsEqual(p, c));
    final hex = _hexRgb(c);
    if (idx >= 0) return 'Preset · $hex';
    return 'Custom · $hex';
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
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(sheetContext).colorScheme.surface,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
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
                      style: TextStyle(
                        color: Theme.of(sheetContext).colorScheme.onSurface,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
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
        );
      },
    );
  }

  Future<void> _showLightBgPicker() async {
    await _showPresetBottomSheet(
      title: 'Light background',
      presets: kLightPresets,
      selectedColor: _lightBgColor,
      onPresetChosen: _saveLightBgColor,
      openCustomDialog: () => _showCustomLightColorDialog(
        target: _ColorSlot.background,
      ),
      firstSwatchLabel: 'Default',
    );
  }

  Future<void> _showLightAccentPicker() async {
    await _showPresetBottomSheet(
      title: 'Light accent',
      presets: kAccentPresets,
      selectedColor: _lightAccentColor,
      onPresetChosen: _saveLightAccentColor,
      openCustomDialog: () => _showCustomLightColorDialog(
        target: _ColorSlot.accent,
      ),
    );
  }

  Future<void> _showDarkBgPicker() async {
    await _showPresetBottomSheet(
      title: 'Dark background',
      presets: kDarkPresets,
      selectedColor: _darkBgColor,
      onPresetChosen: _saveDarkBgColor,
      openCustomDialog: () => _showCustomDarkColorDialog(
        target: _ColorSlot.background,
      ),
      firstSwatchLabel: 'Default',
    );
  }

  Future<void> _showDarkAccentPicker() async {
    await _showPresetBottomSheet(
      title: 'Dark accent',
      presets: kAccentPresets,
      selectedColor: _darkAccentColor,
      onPresetChosen: _saveDarkAccentColor,
      openCustomDialog: () => _showCustomDarkColorDialog(
        target: _ColorSlot.accent,
      ),
    );
  }

  Future<void> _showCustomLightColorDialog({
    required _ColorSlot target,
  }) async {
    Color pickerColor =
        target == _ColorSlot.accent ? _lightAccentColor : _lightBgColor;
    final result = await showDialog<Color>(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: Theme.of(ctx).colorScheme.surface,
          title: Text(
            target == _ColorSlot.accent
                ? 'Custom accent color'
                : 'Custom light background',
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
                'Cancel',
                style: TextStyle(color: Theme.of(ctx).colorScheme.primary),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pop(ctx, pickerColor),
              child: Text(
                'Done',
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

  Future<void> _showCustomDarkColorDialog({
    required _ColorSlot target,
  }) async {
    Color pickerColor =
        target == _ColorSlot.accent ? _darkAccentColor : _darkBgColor;
    final result = await showDialog<Color>(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          backgroundColor: Theme.of(ctx).colorScheme.surface,
          title: Text(
            target == _ColorSlot.accent
                ? 'Custom accent color'
                : 'Custom dark background',
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
                'Cancel',
                style: TextStyle(color: Theme.of(ctx).colorScheme.primary),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pop(ctx, pickerColor),
              child: Text(
                'Done',
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        title: Text('Settings'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          _SectionHeader(title: 'General'),
          _SettingsTile(
            icon: Icons.palette_rounded,
            title: 'Theme',
            subtitle: _themeMode == 'system'
                ? 'System Default'
                : _themeMode == 'light'
                ? 'Light'
                : 'Dark',
            onTap: () => _showThemeModePicker(),
          ),
          if (_activeAppearanceIsLight(context)) ...[
            _SettingsTile(
              icon: Icons.light_mode_outlined,
              title: 'Background',
              subtitle: _bgSubtitle(_lightBgColor, kLightPresets),
              previewColor: _lightBgColor,
              onTap: _showLightBgPicker,
            ),
            _SettingsTile(
              icon: Icons.color_lens_outlined,
              title: 'Accent',
              subtitle: _accentSubtitle(_lightAccentColor),
              previewColor: _lightAccentColor,
              onTap: _showLightAccentPicker,
            ),
          ] else ...[
            _SettingsTile(
              icon: Icons.dark_mode_outlined,
              title: 'Background',
              subtitle: _bgSubtitle(_darkBgColor, kDarkPresets),
              previewColor: _darkBgColor,
              onTap: _showDarkBgPicker,
            ),
            _SettingsTile(
              icon: Icons.color_lens_outlined,
              title: 'Accent',
              subtitle: _accentSubtitle(_darkAccentColor),
              previewColor: _darkAccentColor,
              onTap: _showDarkAccentPicker,
            ),
          ],
          if (!kIsWeb && Platform.isAndroid)
            _SettingsTile(
              icon: Icons.apps_rounded,
              title: 'App icon',
              subtitle: _launcherIconLabel,
              onTap: () async {
                await showLauncherIconPicker(context);
                if (context.mounted) await _loadSettings();
              },
            ),
          _SettingsTile(
            icon: Icons.phone_callback_rounded,
            title: 'Answer method',
            subtitle: _answerMethod == 'slide'
                ? 'Slide to answer'
                : 'Button tap to answer',
            onTap: () => _showAnswerMethodPicker(),
          ),
          _SectionHeader(title: 'Calling'),
          _SettingsTile(
            icon: Icons.sim_card_rounded,
            title: 'Default SIM',
            subtitle: _defaultSimSubtitle(),
            onTap: _showDefaultSimPicker,
          ),
          _SettingsTile(
            icon: Icons.star_rate_rounded,
            title: 'All favourites',
            subtitle: 'Reorder, remove, and add from contacts',
            onTap: () {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (_) => const FavouritesScreen(),
                ),
              );
            },
          ),
          _SettingsTile(
            icon: Icons.block_rounded,
            title: 'Blocked numbers',
            subtitle: 'View and unblock numbers',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const BlockedNumbersScreen()),
              );
            },
          ),
          _SettingsTile(
            icon: Icons.volume_up_rounded,
            title: 'Sounds and vibration',
            subtitle: 'Ringtone, vibration, dial pad tones',
            onTap: () async {
              try {
                await const MethodChannel(
                  'nothing_dialer/control',
                ).invokeMethod<void>('openSoundSettings');
              } on PlatformException catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Could not open settings: ${e.message}')),
                  );
                }
              }
            },
          ),
          SizedBox(height: 16),
          _SectionHeader(
            title: 'Frequently Contacted',
            trailing: GestureDetector(
              onTap: _showFrequentlyContactedInfoDialog,
              child: Icon(
                Icons.info_outline_rounded,
                color: Theme.of(context).colorScheme.outline,
                size: 20,
              ),
            ),
          ),
          _SettingsTile(
            icon: Icons.format_list_numbered_rounded,
            title: 'Number of records',
            subtitle: _frequentMaxSubtitle(),
            onTap: _showFrequentMaxPicker,
          ),
          if (_frequentContactsMax > 0) ...[
            _SettingsTile(
              icon: Icons.date_range_rounded,
              title: 'Time period',
              subtitle: _frequentPeriodSubtitle(),
              onTap: _showFrequentPeriodPicker,
            ),
          ],
          SizedBox(height: 16),
          _SectionHeader(
            title: 'Torch Blink',
            trailing: GestureDetector(
              onTap: _showTorchInfoDialog,
              child: Icon(
                Icons.info_outline_rounded,
                color: Theme.of(context).colorScheme.outline,
                size: 20,
              ),
            ),
          ),
          _SettingsTile(
            icon: Icons.flashlight_on_rounded,
            title: 'Incoming call torch',
            subtitle: _torchIncomingSubtitle(),
            onTap: _torchHasFlash ? _showTorchIncomingPicker : _noopTorch,
          ),
          if (_torchHasFlash && _torchIncomingMode == 'interval') ...[
            _SettingsTile(
              icon: Icons.timer_rounded,
              title: 'Incoming blink interval',
              subtitle: _torchIntervalSecondsLabel(_torchIncomingInterval),
              onTap: () => _showTorchIntervalPicker('incoming'),
            ),
          ],
          const SizedBox(height: 24),
          _SettingsTile(
            icon: Icons.call_made_rounded,
            title: 'Outgoing call torch',
            subtitle: _torchOutgoingSubtitle(),
            onTap: _torchHasFlash ? _showTorchOutgoingPicker : _noopTorch,
          ),
          if (_torchHasFlash && _torchOutgoingMode == 'interval') ...[
            _SettingsTile(
              icon: Icons.timer_rounded,
              title: 'Outgoing blink interval',
              subtitle: _torchIntervalSecondsLabel(_torchOutgoingInterval),
              onTap: () => _showTorchIntervalPicker('outgoing'),
            ),
          ],
          const SizedBox(height: 24),
          _SettingsTile(
            icon: Icons.phone_in_talk_rounded,
            title: 'Ongoing call torch',
            subtitle: _torchOngoingSubtitle(),
            onTap: _torchHasFlash ? _showTorchOngoingPicker : _noopTorch,
          ),
          if (_torchHasFlash && _torchOngoingMode == 'interval') ...[
            _SettingsTile(
              icon: Icons.timer_rounded,
              title: 'Ongoing blink interval',
              subtitle: _torchIntervalSecondsLabel(_torchOngoingInterval),
              onTap: () => _showTorchIntervalPicker('ongoing'),
            ),
          ],
          const SizedBox(height: 24),
          _SectionHeader(
            title: 'Glyph Lights',
            trailing: GestureDetector(
              onTap: () => _showGlyphMapDialog(),
              child: Icon(
                Icons.info_outline_rounded,
                color: Theme.of(context).colorScheme.outline,
                size: 20,
              ),
            ),
          ),
          _SettingsTile(
            icon: Icons.flare_rounded,
            title: 'Glyph calling animation',
            subtitle: _glyphAnimationStyle,
            onTap: () => _showGlyphAnimationStylePicker(),
          ),
          if (_glyphAnimationStyle != 'None') ...[
            if (_glyphAnimationStyle == 'Breath')
              _SettingsTile(
                icon: Icons.tune_rounded,
                title: 'Breath Settings',
                subtitle:
                    '${_customChannels.length} lights, ${_customInterval}ms speed',
                onTap: () => _showBreathSettingsPicker(),
              ),
            if (_glyphAnimationStyle == 'Accumulate' ||
                _glyphAnimationStyle == 'Single')
              _SettingsTile(
                icon: Icons.timer_rounded,
                title: 'Speed Settings',
                subtitle: '${_glyphC1C4Interval}ms delay',
                onTap: () => _showC1C4SpeedPicker(
                  isInCall: false,
                  style: _glyphAnimationStyle,
                ),
              ),
            if (_glyphAnimationStyle == 'Breath & Progress')
              _SettingsTile(
                icon: Icons.speed_rounded,
                title: 'Duration & Speed',
                subtitle:
                    '${_glyphBreathProgressDuration ~/ 1000}s duration, ${_glyphBreathProgressInterval}ms speed',
                onTap: () => _showBreathProgressSpeedPicker(isInCall: false),
              ),
          ],
          const SizedBox(height: 24),
          _SettingsTile(
            icon: Icons.flare_rounded,
            title: 'Glyph ongoing call animation',
            subtitle: _inCallAnimationStyle,
            onTap: () => _showInCallAnimationStylePicker(),
          ),
          if (_inCallAnimationStyle != 'None') ...[
            if (_inCallAnimationStyle == 'Breath')
              _SettingsTile(
                icon: Icons.tune_rounded,
                title: 'Breath Settings',
                subtitle:
                    '${_inCallCustomChannels.length} lights, ${_inCallCustomInterval}ms speed',
                onTap: () => _showInCallBreathSettingsPicker(),
              ),
            if (_inCallAnimationStyle == 'Accumulate' ||
                _inCallAnimationStyle == 'Single')
              _SettingsTile(
                icon: Icons.timer_rounded,
                title: 'Speed Settings',
                subtitle: '${_inCallC1C4Interval}ms delay',
                onTap: () => _showC1C4SpeedPicker(
                  isInCall: true,
                  style: _inCallAnimationStyle,
                ),
              ),
            if (_inCallAnimationStyle == 'Breath & Progress')
              _SettingsTile(
                icon: Icons.speed_rounded,
                title: 'Duration & Speed',
                subtitle:
                    '${_inCallBreathProgressDuration ~/ 1000}s duration, ${_inCallBreathProgressInterval}ms speed',
                onTap: () => _showBreathProgressSpeedPicker(isInCall: true),
              ),
          ],
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  void _noopTorch() {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Flashlight not available on this device'),
      ),
    );
  }

  void _showBreathSettingsPicker() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) {
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
                      'Breath Settings',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Breath Speed',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
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
                            activeColor: Theme.of(context).colorScheme.primary,
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
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.outline,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, bottom: 24),
                      child: Text(
                        'Lower = Blink, Higher = Slow Breath',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.outline,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    Text(
                      'Active Lights',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
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
                            style: TextStyle(
                              color: isSelected
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : Theme.of(
                                      context,
                                    ).colorScheme.onSurfaceVariant,
                              fontSize: 12,
                            ),
                          ),
                          selected: isSelected,
                          checkmarkColor: Theme.of(
                            context,
                          ).colorScheme.onPrimary,
                          selectedColor: Theme.of(context).colorScheme.primary,
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
                            final prefs = await SharedPreferences.getInstance();
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
    );
  }

  void _showInCallBreathSettingsPicker() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) {
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
                      'Breath Settings',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Breath Speed',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
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
                            activeColor: Theme.of(context).colorScheme.primary,
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
                              main_app.inCallCustomIntervalNotifier.value = val
                                  .toInt();
                            },
                          ),
                        ),
                        SizedBox(
                          width: 50,
                          child: Text(
                            '${_inCallCustomInterval}ms',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.outline,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, bottom: 24),
                      child: Text(
                        'Lower = Blink, Higher = Slow Breath',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.outline,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    Text(
                      'Active Lights',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
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
                            style: TextStyle(
                              color: isSelected
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : Theme.of(
                                      context,
                                    ).colorScheme.onSurfaceVariant,
                              fontSize: 12,
                            ),
                          ),
                          selected: isSelected,
                          checkmarkColor: Theme.of(
                            context,
                          ).colorScheme.onPrimary,
                          selectedColor: Theme.of(context).colorScheme.primary,
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
                            final prefs = await SharedPreferences.getInstance();
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
    );
  }

  void _showAnswerMethodPicker() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
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
                      color: Theme.of(context).colorScheme.outlineVariant,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 16, 24, 8),
                child: Text(
                  'Answer method',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              _MethodOption(
                icon: Icons.swipe_right_rounded,
                label: 'Slide to answer',
                subtitle: 'Swipe up to answer, like Google Phone',
                selected: _answerMethod == 'slide',
                onTap: () {
                  _saveAnswerMethod('slide');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.touch_app_rounded,
                label: 'Button tap',
                subtitle: 'Tap answer or decline buttons',
                selected: _answerMethod == 'button',
                onTap: () {
                  _saveAnswerMethod('button');
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  void _showGlyphAnimationStylePicker() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => Container(
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
                  padding: EdgeInsets.only(top: 16, bottom: 8),
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
                padding: EdgeInsets.fromLTRB(24, 16, 24, 8),
                child: Text(
                  'Outgoing Call Style',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              _MethodOption(
                icon: Icons.block_rounded,
                label: 'None',
                subtitle: 'Disable Glyph lights for outgoing calls',
                selected: _glyphAnimationStyle == 'None',
                onTap: () {
                  _saveGlyphAnimationStyle('None');
                  importMainAndUpdate('None');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.flare_rounded,
                label: 'Breath & Progress',
                subtitle: 'Lights breathe while line fills up over 65s',
                selected: _glyphAnimationStyle == 'Breath & Progress',
                onTap: () {
                  _saveGlyphAnimationStyle('Breath & Progress');

                  // Also update notifier in main.dart so next call uses it
                  importMainAndUpdate('Breath & Progress');

                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.animation_rounded,
                label: 'Accumulate',
                subtitle: 'Accumulating animation on lights C1-C4',
                selected: _glyphAnimationStyle == 'Accumulate',
                onTap: () {
                  _saveGlyphAnimationStyle('Accumulate');
                  importMainAndUpdate('Accumulate');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.animation_rounded,
                label: 'Single',
                subtitle: 'Single light moving across C1-C4',
                selected: _glyphAnimationStyle == 'Single',
                onTap: () {
                  _saveGlyphAnimationStyle('Single');
                  importMainAndUpdate('Single');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.tune_rounded,
                label: 'Breath',
                subtitle: 'Pick lights and speed',
                selected: _glyphAnimationStyle == 'Breath',
                onTap: () {
                  _saveGlyphAnimationStyle('Breath');
                  importMainAndUpdate('Breath');
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  void _showInCallAnimationStylePicker() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => Container(
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
                  padding: EdgeInsets.only(top: 16, bottom: 8),
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
                padding: EdgeInsets.fromLTRB(24, 16, 24, 8),
                child: Text(
                  'Ongoing Call Style',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              _MethodOption(
                icon: Icons.block_rounded,
                label: 'None',
                subtitle: 'Disable Glyph lights while actively on call',
                selected: _inCallAnimationStyle == 'None',
                onTap: () {
                  _saveInCallAnimationStyle('None');
                  importMainAndInCallUpdate('None');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.flare_rounded,
                label: 'Breath & Progress',
                subtitle: 'Lights breathe while line fills up over 65s',
                selected: _inCallAnimationStyle == 'Breath & Progress',
                onTap: () {
                  _saveInCallAnimationStyle('Breath & Progress');
                  importMainAndInCallUpdate('Breath & Progress');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.flare_rounded,
                label: 'Accumulate',
                subtitle: 'Accumulating animation on lights C1-C4',
                selected: _inCallAnimationStyle == 'Accumulate',
                onTap: () {
                  _saveInCallAnimationStyle('Accumulate');
                  importMainAndInCallUpdate('Accumulate');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.animation_rounded,
                label: 'Single',
                subtitle: 'Single light moving across C1-C4',
                selected: _inCallAnimationStyle == 'Single',
                onTap: () {
                  _saveInCallAnimationStyle('Single');
                  importMainAndInCallUpdate('Single');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.tune_rounded,
                label: 'Breath',
                subtitle: 'Pick lights and speed',
                selected: _inCallAnimationStyle == 'Breath',
                onTap: () {
                  _saveInCallAnimationStyle('Breath');
                  importMainAndInCallUpdate('Breath');
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  void _showBreathProgressSpeedPicker({required bool isInCall}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) {
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
                      'Speed Settings',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      'Animation Delay (1s - 10s)',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
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
                            activeColor: Theme.of(context).colorScheme.primary,
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
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.outline,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, bottom: 24),
                      child: Text(
                        'Lower = Faster, Higher = Slower',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.outline,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          'Done',
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
    );
  }

  void _showC1C4SpeedPicker({required bool isInCall, required String style}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) {
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
                      'Speed Settings',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 24),
                    Text(
                      'Animation Delay (${isSingle ? "0.1s" : "1s"} - 10s)',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
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
                            activeColor: Theme.of(context).colorScheme.primary,
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
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.outline,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, bottom: 24),
                      child: Text(
                        'Lower = Faster, Higher = Slower',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.outline,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          'Done',
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
    );
  }

  void _showThemeModePicker() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
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
                      color: Theme.of(context).colorScheme.outlineVariant,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(24, 16, 24, 8),
                child: Text(
                  'Theme',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              _MethodOption(
                icon: Icons.brightness_auto_rounded,
                label: 'System Default',
                subtitle: 'Follow system settings',
                selected: _themeMode == 'system',
                onTap: () {
                  _saveThemeMode('system');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.light_mode_rounded,
                label: 'Light',
                subtitle: 'Always use light theme',
                selected: _themeMode == 'light',
                onTap: () {
                  _saveThemeMode('light');
                  Navigator.pop(context);
                },
              ),
              _MethodOption(
                icon: Icons.dark_mode_rounded,
                label: 'Dark',
                subtitle: 'Always use dark theme',
                selected: _themeMode == 'dark',
                onTap: () {
                  _saveThemeMode('dark');
                  Navigator.pop(context);
                },
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  void _showFrequentlyContactedInfoDialog() {
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
                'Frequently Contacted',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Shows your most-called phone numbers at the top of the Recents tab, based on how many incoming, outgoing, missed, or rejected calls you had with each number in the time period you choose.\n\n'
                'Number of records: set to 0 to turn this off. Use 1–20 to show that many top contacts.\n\n'
                'Time period applies only when at least one contact is shown.',
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
                    'Close',
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
                'Glyph Map Reference',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
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
                        'Glyph Map Unavailable',
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
                  'Close',
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
                'Torch Blink',
                style: TextStyle(
                  color: Theme.of(ctx).colorScheme.onSurface,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Blinks the phone flashlight during calls. This is separate from Glyph lights.\n\n'
                'Fixed interval: torch toggles on/off at the delay you set.',
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
                    'Close',
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
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => Container(
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
                      color: Theme.of(sheetContext).colorScheme.outlineVariant,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
                child: Text(
                  'Incoming call torch',
                  style: TextStyle(
                    color: Theme.of(sheetContext).colorScheme.onSurface,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              _MethodOption(
                icon: Icons.block_rounded,
                label: 'Off',
                subtitle: 'No torch while ringing',
                selected: _torchIncomingMode == 'off',
                onTap: () {
                  _saveTorchIncomingMode('off');
                  Navigator.pop(sheetContext);
                },
              ),
              _MethodOption(
                icon: Icons.timer_rounded,
                label: 'Fixed interval',
                subtitle: 'Blink at a set speed',
                selected: _torchIncomingMode == 'interval',
                onTap: () {
                  _saveTorchIncomingMode('interval');
                  Navigator.pop(sheetContext);
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  void _showTorchOutgoingPicker() {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => Container(
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
                      color: Theme.of(sheetContext).colorScheme.outlineVariant,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
                child: Text(
                  'Outgoing call torch',
                  style: TextStyle(
                    color: Theme.of(sheetContext).colorScheme.onSurface,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              _MethodOption(
                icon: Icons.block_rounded,
                label: 'Off',
                subtitle: 'No torch while dialing',
                selected: _torchOutgoingMode == 'off',
                onTap: () {
                  _saveTorchOutgoingMode('off');
                  Navigator.pop(sheetContext);
                },
              ),
              _MethodOption(
                icon: Icons.timer_rounded,
                label: 'Fixed interval',
                subtitle: 'Blink at a set speed',
                selected: _torchOutgoingMode == 'interval',
                onTap: () {
                  _saveTorchOutgoingMode('interval');
                  Navigator.pop(sheetContext);
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  void _showTorchOngoingPicker() {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => Container(
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
                      color: Theme.of(sheetContext).colorScheme.outlineVariant,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
                child: Text(
                  'Ongoing call torch',
                  style: TextStyle(
                    color: Theme.of(sheetContext).colorScheme.onSurface,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              _MethodOption(
                icon: Icons.block_rounded,
                label: 'Off',
                subtitle: 'No torch during active call',
                selected: _torchOngoingMode == 'off',
                onTap: () {
                  _saveTorchOngoingMode('off');
                  Navigator.pop(sheetContext);
                },
              ),
              _MethodOption(
                icon: Icons.timer_rounded,
                label: 'Fixed interval',
                subtitle: 'Blink at a set speed',
                selected: _torchOngoingMode == 'interval',
                onTap: () {
                  _saveTorchOngoingMode('interval');
                  Navigator.pop(sheetContext);
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  void _showTorchIntervalPicker(String kind) {
    var currentMs = switch (kind) {
      'incoming' => _torchIncomingInterval,
      'outgoing' => _torchOutgoingInterval,
      _ => _torchOngoingInterval,
    };
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => StatefulBuilder(
        builder: (context, setModalState) {
          final currentSec = (currentMs / 1000.0).clamp(0.1, 3.0);
          return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
                      'Blink interval',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
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
                            activeColor: Theme.of(context).colorScheme.primary,
                            onChanged: (sec) {
                              final ms = (sec * 1000).round().clamp(100, 3000);
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
                              final ms = (sec * 1000).round().clamp(100, 3000);
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
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.outline,
                              fontSize: 12,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          'Done',
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
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 12,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
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
          ThemeData.estimateBrightnessForColor(previewColor!) ==
              Brightness.dark
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
              child: Icon(
                icon,
                color: leadingIconColor,
                size: 20,
              ),
            ),
          )
        : SizedBox(
            width: 40,
            height: 40,
            child: Icon(
              icon,
              color: leadingIconColor,
              size: 22,
            ),
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
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontSize: 14,
                      ),
                    ),
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
            style: TextStyle(
              fontSize: 11,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
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
                  child: Icon(Icons.colorize_rounded, color: Colors.white, size: 22),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Custom',
          style: TextStyle(
            fontSize: 11,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

class _MethodOption extends StatelessWidget {
  final IconData icon;
  final String label;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;

  _MethodOption({
    required this.icon,
    required this.label,
    required this.subtitle,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Container(
            decoration: BoxDecoration(
              color: selected
                  ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.1)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(16),
            ),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: Icon(
                    icon,
                    color: selected
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.onSurface,
                    size: 22,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontSize: 16,
                          fontWeight: selected
                              ? FontWeight.w600
                              : FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
                if (selected)
                  Icon(
                    Icons.check_circle,
                    color: Theme.of(context).colorScheme.primary,
                    size: 22,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
