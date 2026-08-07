import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../extensions/dialer_text_style.dart';
import '../services/app_font_config.dart';
import '../widgets/dialer_font_scope.dart';

class DefaultDialerScreen extends StatelessWidget {
  const DefaultDialerScreen({super.key});

  static const _controlChannel = MethodChannel('nothing_dialer/control');

  Future<void> _requestDefault() async {
    try {
      await _controlChannel.invokeMethod('requestDefaultDialer');
    } catch (e) {
      debugPrint('Error requesting default dialer: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DialerFontScope(
      surface: DialerFontSurface.defaultDialer,
      child: Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Text(
                'SET AS\nDEFAULT',
                style: context.dialerTextStyle(
                  DialerFontRole.pageTitle,
                  TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                    height: 1.0,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'To use Nothing Dialer, it must be set as your default phone app. This allows you to manage calls, view history, and use Glyph animations.',
                style: context.dialerTextStyle(
                  DialerFontRole.secondary,
                  TextStyle(
                    fontSize: 16,
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                    height: 1.5,
                  ),
                ),
              ),
              const Spacer(),
              Center(
                child: Material(
                  color: Colors.transparent,
                  shape: CircleBorder(
                    side: BorderSide(
                      color: theme.colorScheme.primary.withValues(alpha: 0.35),
                      width: 1.5,
                    ),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: SizedBox(
                    width: 120,
                    height: 120,
                    child: Icon(
                      Icons.dialpad_rounded,
                      size: 48,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: _requestDefault,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: theme.colorScheme.primary,
                    foregroundColor: theme.colorScheme.onPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'SET AS DEFAULT',
                    style: context.dialerTextStyle(
                      DialerFontRole.button,
                      const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: Text(
                  'NOTHING DIALER 1',
                  style: TextStyle(
                    fontSize: 10,
                    letterSpacing: 4.0,
                    fontWeight: FontWeight.w500,
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.4),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
