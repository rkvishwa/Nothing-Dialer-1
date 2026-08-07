import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nothing_dialer/l10n/app_localizations.dart';

import '../main.dart' as main_app;

/// Green tap-to-return bar shown while a call is active or ringing.
class OngoingCallBanner extends StatelessWidget {
  const OngoingCallBanner({super.key});

  static const _controlChannel = MethodChannel('nothing_dialer/control');

  static Future<void> syncCallStateFromNative() async {
    try {
      final state = await _controlChannel
          .invokeMethod<Map<dynamic, dynamic>>('getCallState');
      main_app.dialerCallStateNotifier.value = state;
    } catch (_) {
      main_app.dialerCallStateNotifier.value = null;
    }
  }

  static void returnToCall() {
    _controlChannel.invokeMethod('returnToCall');
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Map<dynamic, dynamic>?>(
      valueListenable: main_app.dialerCallStateNotifier,
      builder: (context, activeCallState, _) {
        if (activeCallState == null) return const SizedBox.shrink();
        final l10n = AppLocalizations.of(context);
        final detail =
            '${activeCallState['contactName'] ?? activeCallState['number']}';
        return GestureDetector(
          onTap: returnToCall,
          child: Container(
            width: double.infinity,
            color: const Color(0xFF1E8E3E),
            padding: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.call, color: Colors.white, size: 18),
                const SizedBox(width: 8),
                Text(
                  l10n.ongoingCallWithDetail(detail),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
