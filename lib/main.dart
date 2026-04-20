import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nothing_glyph_interface/nothing_glyph_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screens/dialer_shell.dart';
import 'screens/default_dialer_screen.dart';
import 'services/favourites_manager.dart';

const String _glyphChannel = 'nothing_dialer/glyph';
const String _controlChannel = 'nothing_dialer/control';

final NothingGlyphInterface _glyph = NothingGlyphInterface();

/// Shared notifiers — listened to ONCE in [_NothingDialerAppState._initGlyph].
final ValueNotifier<bool> glyphConnectedNotifier = ValueNotifier(false);
final ValueNotifier<bool> isPhone1Notifier = ValueNotifier(false);

/// Glyph settings controlled from HomeScreen.
final ValueNotifier<String> themeModeNotifier = ValueNotifier('system');
final ValueNotifier<bool> glyphEnabledNotifier = ValueNotifier(true);
final ValueNotifier<String> glyphAnimationStyleNotifier = ValueNotifier(
  'Breath & Progress',
);
final ValueNotifier<int> glyphC1C4IntervalNotifier = ValueNotifier(1000);
final ValueNotifier<int> glyphCustomIntervalNotifier = ValueNotifier(1500);
final ValueNotifier<List<String>> glyphCustomChannelsNotifier = ValueNotifier([
  'A1',
  'B1',
  'C-All',
  'D-All',
  'E1',
]);
final ValueNotifier<int> glyphBreathProgressDurationNotifier = ValueNotifier(
  65000,
);
final ValueNotifier<int> glyphBreathProgressIntervalNotifier = ValueNotifier(
  100,
);

/// In-Call settings controlled from HomeScreen.
final ValueNotifier<String> inCallAnimationStyleNotifier = ValueNotifier(
  'Breath & Progress',
);
final ValueNotifier<int> inCallC1C4IntervalNotifier = ValueNotifier(1000);
final ValueNotifier<int> inCallCustomIntervalNotifier = ValueNotifier(1500);
final ValueNotifier<List<String>> inCallCustomChannelsNotifier = ValueNotifier([
  'A1',
  'B1',
  'C-All',
  'D-All',
  'E1',
]);
final ValueNotifier<int> inCallBreathProgressDurationNotifier = ValueNotifier(
  65000,
);
final ValueNotifier<int> inCallBreathProgressIntervalNotifier = ValueNotifier(
  100,
);

/// Default Dialer status
final ValueNotifier<bool> isDefaultDialerNotifier = ValueNotifier(true);
final ValueNotifier<String?> openDialpadRequestNotifier = ValueNotifier(null);
final ValueNotifier<int> recentsRefreshTickNotifier = ValueNotifier(0);
final ValueNotifier<int> clearRecentsSearchTickNotifier = ValueNotifier(0);
final ValueNotifier<int> clearContactsSearchTickNotifier = ValueNotifier(0);
final ValueNotifier<bool> recentsSearchActiveNotifier = ValueNotifier(false);
final ValueNotifier<bool> contactsSearchActiveNotifier = ValueNotifier(false);

/// Recents "Frequently contacted" section (max 0 = off)
final ValueNotifier<String> frequentContactsPeriodNotifier =
    ValueNotifier('year');
final ValueNotifier<int> frequentContactsMaxNotifier = ValueNotifier(5);

/// Recents filter: `all` | `missed` | `contacts` | `non_contacts`
final ValueNotifier<String> recentsFilterNotifier = ValueNotifier('all');

bool get _glyphConnected => glyphConnectedNotifier.value;
bool get _isPhone1 => isPhone1Notifier.value;
bool get _glyphEnabled => glyphEnabledNotifier.value;
String get _glyphAnimationStyle => glyphAnimationStyleNotifier.value;
int get _glyphC1C4Interval => glyphC1C4IntervalNotifier.value;
int get _glyphCustomInterval => glyphCustomIntervalNotifier.value;
List<String> get _glyphCustomChannels => glyphCustomChannelsNotifier.value;
int get _glyphBreathProgressDuration =>
    glyphBreathProgressDurationNotifier.value;
int get _glyphBreathProgressInterval =>
    glyphBreathProgressIntervalNotifier.value;

String get _inCallAnimationStyle => inCallAnimationStyleNotifier.value;
int get _inCallC1C4Interval => inCallC1C4IntervalNotifier.value;
int get _inCallCustomInterval => inCallCustomIntervalNotifier.value;
List<String> get _inCallCustomChannels => inCallCustomChannelsNotifier.value;
int get _inCallBreathProgressDuration =>
    inCallBreathProgressDurationNotifier.value;
int get _inCallBreathProgressInterval =>
    inCallBreathProgressIntervalNotifier.value;

/// 0 = feature off. Migrates from legacy `frequent_contacts_enabled` when max unset.
int _loadFrequentContactsMax(SharedPreferences prefs) {
  final stored = prefs.getInt('frequent_contacts_max');
  if (stored != null) return stored.clamp(0, 20);
  if (prefs.getBool('frequent_contacts_enabled') == false) return 0;
  return 5;
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const NothingDialerApp());
}

class NothingDialerApp extends StatefulWidget {
  const NothingDialerApp({super.key});

  @override
  State<NothingDialerApp> createState() => _NothingDialerAppState();
}

class _NothingDialerAppState extends State<NothingDialerApp> {
  static const _glyphMethodChannel = MethodChannel(_glyphChannel);
  static const _controlMethodChannel = MethodChannel(_controlChannel);

  /// Tracked so we can cancel before re-subscribing on hot-restart cycles.
  StreamSubscription<bool>? _glyphSubscription;

  @override
  void initState() {
    super.initState();
    _initGlyph();
    _listenForGlyphCommands();
  }

  Future<void> _initGlyph() async {
    // Cancel any previous subscription (survives hot-restart on the global _glyph).
    await _glyphSubscription?.cancel();

    // Determine phone model BEFORE setting up the connection listener,
    // so _isPhone1 is correct when _triggerGlyphLights is called.
    isPhone1Notifier.value = await _glyph.is20111() ?? false;

    // Load settings
    final prefs = await SharedPreferences.getInstance();
    themeModeNotifier.value = prefs.getString('theme_mode') ?? 'system';
    glyphAnimationStyleNotifier.value =
        prefs.getString('glyph_animation_style') ?? 'Breath & Progress';
    glyphC1C4IntervalNotifier.value =
        prefs.getInt('glyph_c1c4_interval') ?? 1000;
    glyphCustomIntervalNotifier.value =
        prefs.getInt('glyph_custom_interval') ?? 1500;
    glyphCustomChannelsNotifier.value =
        prefs.getStringList('glyph_custom_channels') ??
        ['A1', 'B1', 'C-All', 'D-All', 'E1'];
    glyphBreathProgressDurationNotifier.value =
        prefs.getInt('glyph_breath_progress_duration') ?? 65000;
    glyphBreathProgressIntervalNotifier.value =
        prefs.getInt('glyph_breath_progress_interval') ?? 100;

    inCallAnimationStyleNotifier.value =
        prefs.getString('in_call_animation_style') ?? 'Breath & Progress';
    inCallC1C4IntervalNotifier.value =
        prefs.getInt('in_call_c1c4_interval') ?? 1000;
    inCallCustomIntervalNotifier.value =
        prefs.getInt('in_call_custom_interval') ?? 1500;
    inCallCustomChannelsNotifier.value =
        prefs.getStringList('in_call_custom_channels') ??
        ['A1', 'B1', 'C-All', 'D-All', 'E1'];
    inCallBreathProgressDurationNotifier.value =
        prefs.getInt('in_call_breath_progress_duration') ?? 65000;
    inCallBreathProgressIntervalNotifier.value =
        prefs.getInt('in_call_breath_progress_interval') ?? 100;

    frequentContactsPeriodNotifier.value =
        prefs.getString('frequent_contacts_period') ?? 'year';
    frequentContactsMaxNotifier.value = _loadFrequentContactsMax(prefs);

    recentsFilterNotifier.value =
        prefs.getString('recents_filter') ?? 'all';
    await FavouritesManager.load();

    // Initial default dialer check
    try {
      isDefaultDialerNotifier.value =
          await _controlMethodChannel.invokeMethod<bool>('isDefaultDialer') ??
          true;
    } catch (e) {
      debugPrint('Error checking default dialer on start: $e');
    }

    // *** Bind the Glyph service — without this the onServiceConnection
    // stream never fires and the status stays Disconnected forever. ***
    await _glyph.init();

    _glyphSubscription = _glyph.onServiceConnection.listen((bool connected) {
      glyphConnectedNotifier.value = connected;
    });
  }

  void _listenForGlyphCommands() {
    _glyphMethodChannel.setMethodCallHandler((MethodCall call) async {
      print('Dialer: Received method call (glyph) - ${call.method}');
      switch (call.method) {
        case 'lightsOnOutgoing':
          await _triggerGlyphLights(isOutgoing: true);
        case 'lightsOnActiveCall':
          await _triggerGlyphLights(isActiveCall: true);
        case 'lightsOnIncoming':
        case 'lightsOn':
          await _triggerGlyphLights();
        case 'lightsOff':
          await _turnOffGlyphLights();
          break;
      }
    });

    _controlMethodChannel.setMethodCallHandler((MethodCall call) async {
      print('Dialer: Received method call (control) - ${call.method}');
      switch (call.method) {
        case 'onDefaultDialerStatus':
          isDefaultDialerNotifier.value = call.arguments as bool;
          break;
        case 'openDialpad':
          final number = (call.arguments as String?) ?? '';
          openDialpadRequestNotifier.value = number;
          break;
      }
    });
  }

  @override
  void dispose() {
    _glyphSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
      valueListenable: themeModeNotifier,
      builder: (context, themeStr, _) {
        ThemeMode themeMode;
        switch (themeStr) {
          case 'light':
            themeMode = ThemeMode.light;
            break;
          case 'dark':
            themeMode = ThemeMode.dark;
            break;
          default:
            themeMode = ThemeMode.system;
            break;
        }
        return MaterialApp(
          title: 'Nothing Dialer',
          debugShowCheckedModeBanner: false,
          themeMode: themeMode,
          theme: ThemeData(
            colorScheme: ColorScheme.light(
              primary: const Color(0xFF1C1B1F),
              secondary: const Color(0xFF49454F),
              surface: const Color(0xFFF3F3F3),
            ),
            scaffoldBackgroundColor: const Color(0xFFF3F3F3),
            fontFamily: 'RobotoMono',
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme: const ColorScheme.dark(
              primary: Color(0xFFE8E8E8),
              secondary: Color(0xFFB0B0B0),
              surface: Color(0xFF0D0D0D),
            ),
            scaffoldBackgroundColor: const Color(0xFF0D0D0D),
            fontFamily: 'RobotoMono',
            useMaterial3: true,
          ),
          home: ValueListenableBuilder<bool>(
            valueListenable: isDefaultDialerNotifier,
            builder: (context, isDefault, _) {
              if (!isDefault) {
                return const DefaultDialerScreen();
              }
              return DialerShell(
                glyphConnectedNotifier: glyphConnectedNotifier,
                isPhone1Notifier: isPhone1Notifier,
                glyphEnabledNotifier: glyphEnabledNotifier,
              );
            },
          ),
        );
      },
    );
  }
}

// ── Glyph helpers ─────────────────────────────────────────────────────────────

bool _glyphAnimRunning = false;
int _animSequenceId = 0;
int _currentProgress = 0;
Timer? _progressTimer;

Future<void> _triggerGlyphLights({
  bool isOutgoing = false,
  bool isActiveCall = false,
}) async {
  if (!_glyphConnected || !_glyphEnabled) return;

  _glyphAnimRunning = true;
  _animSequenceId++;
  final currentSeq = _animSequenceId;

  _runAnimationLoop(
    currentSeq,
    isOutgoing: isOutgoing,
    isActiveCall: isActiveCall,
  );

  if (isOutgoing) {
    _startProgressAnimation(currentSeq);
  }
}

Future<void> _startProgressAnimation(int seqId) async {
  // We don't use a separate timer anymore, everything runs in the main loop for outgoing calls
}

Future<void> _runAnimationLoop(
  int seqId, {
  bool isOutgoing = false,
  bool isActiveCall = false,
}) async {
  final style = isActiveCall ? _inCallAnimationStyle : _glyphAnimationStyle;

  switch (style) {
    case 'None':
      await _glyph.turnOff();
      break;
    case 'Breath & Progress':
      if (isOutgoing) {
        await _runBreathAndProgressLoop(seqId, isActiveCall: isActiveCall);
      } else {
        await _runHardwareBreathingLoop(seqId);
      }
      break;
    case 'Accumulate':
      await _runC1C4AddLoop(seqId, isActiveCall: isActiveCall);
      break;
    case 'Single':
      await _runC1C4SingleLoop(seqId, isActiveCall: isActiveCall);
      break;
    case 'Breath':
    case 'Custom Breath':
      await _runCustomBreathLoop(seqId, isActiveCall: isActiveCall);
      break;
    default:
      await _runHardwareBreathingLoop(seqId);
      break;
  }
}

Future<void> _runBreathAndProgressLoop(
  int seqId, {
  bool isActiveCall = false,
}) async {
  int elapsedMillis = 0;
  final durationMillis = isActiveCall
      ? _inCallBreathProgressDuration
      : _glyphBreathProgressDuration;
  final interval = isActiveCall
      ? _inCallBreathProgressInterval
      : _glyphBreathProgressInterval;

  while (_glyphAnimRunning && _animSequenceId == seqId) {
    try {
      final builderOn = GlyphFrameBuilder();
      final builderOff = GlyphFrameBuilder();

      if (_isPhone1) {
        builderOn
            .buildChannelA()
            .buildChannelB()
            .buildChannelC()
            .buildChannelE();
        builderOn.buildChannel(NothingPhone1.d1_1);
        builderOff.buildChannel(NothingPhone1.d1_1);
      } else {
        builderOn.buildChannelA();
        builderOff.buildChannelA();
      }

      while (_glyphAnimRunning &&
          _animSequenceId == seqId &&
          elapsedMillis <= durationMillis) {
        await _glyph.buildGlyphFrame(builderOn.build());
        for (int i = 0; i < 15; i++) {
          if (!_glyphAnimRunning || _animSequenceId != seqId) break;
          _currentProgress = ((elapsedMillis / durationMillis) * 100)
              .clamp(0, 100)
              .toInt();
          await _glyph.displayProgressAndToggle(_currentProgress);
          await Future.delayed(Duration(milliseconds: interval));
          elapsedMillis += interval;
        }

        if (!_glyphAnimRunning || _animSequenceId != seqId) break;

        await _glyph.buildGlyphFrame(builderOff.build());
        for (int i = 0; i < 10; i++) {
          if (!_glyphAnimRunning || _animSequenceId != seqId) break;
          _currentProgress = ((elapsedMillis / durationMillis) * 100)
              .clamp(0, 100)
              .toInt();
          await _glyph.displayProgressAndToggle(_currentProgress);
          await Future.delayed(Duration(milliseconds: interval));
          elapsedMillis += interval;
        }
      }

      if (_glyphAnimRunning && _animSequenceId == seqId) {
        await _glyph.buildGlyphFrame(builderOn.build());
        await _glyph.displayProgressAndToggle(100);
        await Future.delayed(const Duration(milliseconds: 500));
      }
    } catch (e) {
      print('Dialer: breath/progress animation error - $e');
      await Future.delayed(const Duration(seconds: 1));
    }
  }
}

Future<void> _runC1C4AddLoop(int seqId, {bool isActiveCall = false}) async {
  if (!_isPhone1) return _runHardwareBreathingLoop(seqId);

  final List<List<int>> stages = [
    [NothingPhone1.c2],
    [NothingPhone1.c2, NothingPhone1.c1],
    [NothingPhone1.c2, NothingPhone1.c1, NothingPhone1.c4],
    [NothingPhone1.c2, NothingPhone1.c1, NothingPhone1.c4, NothingPhone1.c3],
    [], // Zero state
  ];

  int stageIdx = 0;
  final interval = isActiveCall ? _inCallC1C4Interval : _glyphC1C4Interval;

  while (_glyphAnimRunning && _animSequenceId == seqId) {
    try {
      if (stages[stageIdx].isEmpty) {
        await _glyph.turnOff();
      } else {
        final builder = GlyphFrameBuilder();
        for (final ch in stages[stageIdx]) {
          builder.buildChannel(ch);
        }
        await _glyph.buildGlyphFrame(builder.build());
        if (!_glyphAnimRunning || _animSequenceId != seqId) return;
        await _glyph.toggle();
      }

      await Future.delayed(Duration(milliseconds: interval));

      stageIdx = (stageIdx + 1) % stages.length;
    } catch (e) {
      print('Dialer: c1c4 add animation error - $e');
      await Future.delayed(const Duration(seconds: 1));
    }
  }
}

Future<void> _runC1C4SingleLoop(int seqId, {bool isActiveCall = false}) async {
  if (!_isPhone1) return _runHardwareBreathingLoop(seqId);

  final List<int> channels = [
    NothingPhone1.c2,
    NothingPhone1.c1,
    NothingPhone1.c4,
    NothingPhone1.c3,
  ];

  int stageIdx = 0;
  final interval = isActiveCall ? _inCallC1C4Interval : _glyphC1C4Interval;

  while (_glyphAnimRunning && _animSequenceId == seqId) {
    try {
      final builder = GlyphFrameBuilder();
      builder.buildChannel(channels[stageIdx]);

      await _glyph.buildGlyphFrame(builder.build());
      if (!_glyphAnimRunning || _animSequenceId != seqId) return;
      await _glyph.toggle();

      await Future.delayed(Duration(milliseconds: interval));

      stageIdx = (stageIdx + 1) % channels.length;
    } catch (e) {
      print('Dialer: c1c4 single animation error - $e');
      await Future.delayed(const Duration(seconds: 1));
    }
  }
}

Future<void> _runCustomBreathLoop(
  int seqId, {
  bool isActiveCall = false,
}) async {
  while (_glyphAnimRunning && _animSequenceId == seqId) {
    try {
      final interval = isActiveCall
          ? _inCallCustomInterval
          : _glyphCustomInterval;
      final channels = isActiveCall
          ? _inCallCustomChannels
          : _glyphCustomChannels;

      if (channels.isEmpty) {
        await _runHardwareBreathingLoop(seqId);
        return;
      }

      final builder = GlyphFrameBuilder();

      if (_isPhone1) {
        if (channels.contains('A1')) builder.buildChannelA();
        if (channels.contains('B1')) builder.buildChannelB();
        if (channels.contains('C-All')) builder.buildChannelC();
        if (channels.contains('E1')) builder.buildChannelE();
        if (channels.contains('D-All')) {
          builder.buildChannel(NothingPhone1.d1_1);
          builder.buildChannel(NothingPhone1.d1_2);
          builder.buildChannel(NothingPhone1.d1_3);
          builder.buildChannel(NothingPhone1.d1_4);
          builder.buildChannel(NothingPhone1.d1_5);
          builder.buildChannel(NothingPhone1.d1_6);
          builder.buildChannel(NothingPhone1.d1_7);
          builder.buildChannel(NothingPhone1.d1_8);
        }
      } else {
        builder.buildChannelA();
      }

      builder.buildPeriod(interval);
      builder.buildCycles(1);
      int offInterval = interval < 500 ? interval : (interval ~/ 2);
      builder.buildInterval(offInterval);

      await _glyph.buildGlyphFrame(builder.build());
      if (!_glyphAnimRunning || _animSequenceId != seqId) return;
      await _glyph.toggle();

      // Wait for the ON duration
      await Future.delayed(Duration(milliseconds: interval));

      if (!_glyphAnimRunning || _animSequenceId != seqId) return;
      await _glyph.turnOff();

      // Wait for the OFF duration before pulsing again
      await Future.delayed(Duration(milliseconds: offInterval));
    } catch (e) {
      print('Dialer: custom breath animation error - $e');
      await Future.delayed(const Duration(seconds: 1));
    }
  }
}

Future<void> _runHardwareBreathingLoop(int seqId) async {
  while (_glyphAnimRunning && _animSequenceId == seqId) {
    try {
      // Build a frame with hardware breathing parameters
      final builder = GlyphFrameBuilder();
      if (_isPhone1) {
        builder.buildChannelA().buildChannelB().buildChannelC().buildChannelE();
        builder.buildChannel(NothingPhone1.d1_1);
        builder.buildChannel(NothingPhone1.d1_2);
        builder.buildChannel(NothingPhone1.d1_3);
        builder.buildChannel(NothingPhone1.d1_4);
        builder.buildChannel(NothingPhone1.d1_5);
        builder.buildChannel(NothingPhone1.d1_6);
        builder.buildChannel(NothingPhone1.d1_7);
        builder.buildChannel(NothingPhone1.d1_8);
      } else {
        builder.buildChannelA();
      }
      builder.buildPeriod(1500); // 1.5s breathe
      builder.buildCycles(1);
      builder.buildInterval(500);
      await _glyph.buildGlyphFrame(builder.build());

      if (!_glyphAnimRunning || _animSequenceId != seqId) return;
      await _glyph.toggle();

      await Future.delayed(const Duration(milliseconds: 2000));

      if (!_glyphAnimRunning || _animSequenceId != seqId) return;
      await _glyph.turnOff();
      await Future.delayed(const Duration(milliseconds: 1000));
    } catch (e) {
      print('Dialer: hardware animation loop error - $e');
      await Future.delayed(const Duration(seconds: 1));
    }
  }
}

Future<void> _turnOffGlyphLights() async {
  _glyphAnimRunning = false;
  _animSequenceId++;
  _progressTimer?.cancel();
  _progressTimer = null;
  _currentProgress = 0;

  if (!_glyphConnected) return;
  try {
    await _glyph.turnOff();
  } catch (e) {
    print('Dialer: _turnOffGlyphLights error - $e');
  }
}
