import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nothing_glyph_interface/nothing_glyph_interface.dart';

import 'screens/dialer_shell.dart';

const String _glyphChannel   = 'nothing_dialer/glyph';

final NothingGlyphInterface _glyph = NothingGlyphInterface();

/// Shared notifiers — listened to ONCE in [_NothingDialerAppState._initGlyph].
final ValueNotifier<bool> glyphConnectedNotifier = ValueNotifier(false);
final ValueNotifier<bool> isPhone1Notifier       = ValueNotifier(false);

/// Glyph settings controlled from HomeScreen.
final ValueNotifier<bool> glyphEnabledNotifier    = ValueNotifier(true);

bool get _glyphConnected => glyphConnectedNotifier.value;
bool get _isPhone1       => isPhone1Notifier.value;
bool get _glyphEnabled   => glyphEnabledNotifier.value;

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

    // *** Bind the Glyph service — without this the onServiceConnection
    // stream never fires and the status stays Disconnected forever. ***
    await _glyph.init();

    _glyphSubscription = _glyph.onServiceConnection.listen((bool connected) {
      glyphConnectedNotifier.value = connected;
    });
  }

  void _listenForGlyphCommands() {
    print('Dialer: Setting up MethodChannel listener on $_glyphChannel');
    _glyphMethodChannel.setMethodCallHandler((MethodCall call) async {
      print('Dialer: Received method call - ${call.method}');
      switch (call.method) {
        case 'lightsOnOutgoing':
          await _triggerGlyphLights(isOutgoing: true);
        case 'lightsOnIncoming':
        case 'lightsOn':
          await _triggerGlyphLights();
        case 'lightsOff':
          await _turnOffGlyphLights();
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
    return MaterialApp(
      title: 'Nothing Dialer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.dark(
          primary: const Color(0xFFE8E8E8),
          secondary: const Color(0xFFB0B0B0),
          surface: const Color(0xFF0D0D0D),
        ),
        scaffoldBackgroundColor: const Color(0xFF0D0D0D),
        fontFamily: 'RobotoMono',
        useMaterial3: true,
      ),
      home: DialerShell(
        glyphConnectedNotifier: glyphConnectedNotifier,
        isPhone1Notifier: isPhone1Notifier,
        glyphEnabledNotifier: glyphEnabledNotifier,
      ),
    );
  }
}

// ── Glyph helpers ─────────────────────────────────────────────────────────────

bool _glyphAnimRunning = false;
int _animSequenceId = 0;
int _currentProgress = 0;
Timer? _progressTimer;

Future<void> _triggerGlyphLights({bool isOutgoing = false}) async {
  if (!_glyphConnected || !_glyphEnabled) return;

  _glyphAnimRunning = true;
  _animSequenceId++;
  final currentSeq = _animSequenceId;

  _runAnimationLoop(currentSeq, isOutgoing: isOutgoing);
  
  if (isOutgoing) {
    _startProgressAnimation(currentSeq);
  }
}

Future<void> _startProgressAnimation(int seqId) async {
  // We don't use a separate timer anymore, everything runs in the main loop for outgoing calls
}

Future<void> _runAnimationLoop(int seqId, {bool isOutgoing = false}) async {
  if (isOutgoing) {
    int elapsedMillis = 0;
    const int durationMillis = 65000; // Total 55s + 10s = 65s as requested
    
    while (_glyphAnimRunning && _animSequenceId == seqId) {
      try {
        final builderOn = GlyphFrameBuilder();
        final builderOff = GlyphFrameBuilder();

        if (_isPhone1) {
          // Frame where A, B, C, E are ON + D1
          builderOn
              .buildChannelA()
              .buildChannelB()
              .buildChannelC()
              .buildChannelE();
          builderOn.buildChannel(NothingPhone1.d1_1);
          
          // Frame where only D1 is ON
          builderOff.buildChannel(NothingPhone1.d1_1);
        } else {
          builderOn.buildChannelA();
          builderOff.buildChannelA(); // Fallback
        }
        
        // Progress update loop over 65 seconds
        // Manual Breathing Cycle: 1.5s ON, 1.0s OFF
        while (_glyphAnimRunning && _animSequenceId == seqId && elapsedMillis <= durationMillis) {
          
          // --- Breathing ON phase (1.5 seconds) ---
          await _glyph.buildGlyphFrame(builderOn.build());
          for (int i = 0; i < 15; i++) {
            if (!_glyphAnimRunning || _animSequenceId != seqId) break;
            _currentProgress = ((elapsedMillis / durationMillis) * 100).clamp(0, 100).toInt();
            
            // displayProgress overrides all other channels to be off if they are not explicitly in the active frame's channel list.
            // By building builderOn, we ensure they stay lit.
            await _glyph.displayProgressAndToggle(_currentProgress);
            
            await Future.delayed(const Duration(milliseconds: 100));
            elapsedMillis += 100;
          }

          if (!_glyphAnimRunning || _animSequenceId != seqId) break;

          // --- Breathing OFF phase (1.0 seconds) ---
          await _glyph.buildGlyphFrame(builderOff.build());
          for (int i = 0; i < 10; i++) {
            if (!_glyphAnimRunning || _animSequenceId != seqId) break;
            _currentProgress = ((elapsedMillis / durationMillis) * 100).clamp(0, 100).toInt();
            
            // Here, builderOff only has D1_1. displayProgressAndToggle will update progress 
            // AND ensure other channels are turned off (since they aren't in builderOff).
            await _glyph.displayProgressAndToggle(_currentProgress);
            
            await Future.delayed(const Duration(milliseconds: 100));
            elapsedMillis += 100;
          }
        }

        // Keep it fully lit at 100% until the call ends or answers
        if (_glyphAnimRunning && _animSequenceId == seqId) {
          await _glyph.buildGlyphFrame(builderOn.build());
          await _glyph.displayProgressAndToggle(100);
          await Future.delayed(const Duration(milliseconds: 500));
        }

      } catch (e) {
        print('Dialer: outgoing animation loop error - $e');
        await Future.delayed(const Duration(seconds: 1));
      }
    }
  } else {
    // Normal Incoming Call Loop
    while (_glyphAnimRunning && _animSequenceId == seqId) {
      try {
        // Build a frame with hardware breathing parameters
        final builder = GlyphFrameBuilder();
        if (_isPhone1) {
          builder
              .buildChannelA()
              .buildChannelB()
              .buildChannelC()
              .buildChannelE();
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
        print('Dialer: incoming animation loop error - $e');
        await Future.delayed(const Duration(seconds: 1));
      }
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
