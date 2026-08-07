import 'package:flutter/material.dart';

import '../main.dart' as main_app;
import '../services/app_font_config.dart';
import '../services/app_fonts.dart';

class DialerFontScope extends StatelessWidget {
  const DialerFontScope({
    super.key,
    required this.surface,
    required this.child,
  });

  final DialerFontSurface surface;
  final Widget child;

  static DialerFontSurface of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<_DialerFontScopeData>();
    assert(scope != null, 'DialerFontScope not found');
    return scope!.surface;
  }

  static DialerFontSurface? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_DialerFontScopeData>()
        ?.surface;
  }

  static AppFontConfig? configOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_DialerFontScopeData>()
        ?.config;
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: main_app.fontConfigNotifier,
      builder: (context, _) {
        final config = main_app.fontConfigNotifier.value;
        final parent = Theme.of(context);
        // Rebuild from a clean Material 3 base so customize / system choices
        // are not stuck under the app-wide (shell) fontFamily baked into Theme.
        final cleanBase = ThemeData(
          useMaterial3: true,
          colorScheme: parent.colorScheme,
          brightness: parent.brightness,
        ).textTheme;
        final textTheme = buildDialerTextTheme(
          config: config,
          colorScheme: parent.colorScheme,
          base: cleanBase,
          surface: surface,
        );
        final primaryChoice =
            config.choiceFor(surface, DialerFontRole.primary);
        final primaryStyle = applyDialerFontChoice(
          primaryChoice,
          textTheme.bodyMedium ?? const TextStyle(),
          role: DialerFontRole.primary,
        );

        final pageTitleStyle = applyDialerFontChoice(
          config.choiceFor(surface, DialerFontRole.pageTitle),
          textTheme.titleLarge ?? const TextStyle(),
          role: DialerFontRole.pageTitle,
        );

        return _DialerFontScopeData(
          surface: surface,
          config: config,
          child: Theme(
            data: parent.copyWith(
              textTheme: textTheme,
              primaryTextTheme: textTheme,
              appBarTheme: parent.appBarTheme.copyWith(
                titleTextStyle: pageTitleStyle,
              ),
            ),
            child: DefaultTextStyle.merge(
              style: primaryStyle,
              child: child,
            ),
          ),
        );
      },
    );
  }
}

class _DialerFontScopeData extends InheritedWidget {
  const _DialerFontScopeData({
    required this.surface,
    required this.config,
    required super.child,
  });

  final DialerFontSurface surface;
  final AppFontConfig config;

  @override
  bool updateShouldNotify(_DialerFontScopeData oldWidget) =>
      oldWidget.surface != surface || oldWidget.config != config;
}
