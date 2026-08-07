import 'package:flutter/material.dart';

import '../main.dart' as main_app;
import '../services/app_font_config.dart';
import '../services/app_fonts.dart';
import '../widgets/dialer_font_scope.dart';

extension DialerTextStyleContext on BuildContext {
  TextStyle dialerTextStyle(
    DialerFontRole role,
    TextStyle base, {
    DialerFontSurface? surface,
  }) {
    final resolvedSurface =
        surface ?? DialerFontScope.maybeOf(this) ?? DialerFontSurface.shell;
    final config =
        DialerFontScope.configOf(this) ?? main_app.fontConfigNotifier.value;
    final choice = config.choiceFor(resolvedSurface, role);
    return applyDialerFontChoice(choice, base, role: role);
  }
}
