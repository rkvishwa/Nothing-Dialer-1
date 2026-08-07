import 'package:flutter/material.dart';

import '../extensions/dialer_text_style.dart';
import '../services/app_font_config.dart';
import 'dialer_font_scope.dart';

/// Drag handle shown at the top of settings bottom sheets.
class SettingsPickerHandle extends StatelessWidget {
  const SettingsPickerHandle({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 8),
        child: Container(
          width: 32,
          height: 4,
          decoration: BoxDecoration(
            color: scheme.outlineVariant,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ),
    );
  }
}

/// Title row for settings bottom sheets (matches in-app picker sheets).
class SettingsPickerTitle extends StatelessWidget {
  const SettingsPickerTitle({
    super.key,
    required this.title,
    this.useDialerFont = true,
  });

  final String title;
  final bool useDialerFont;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final style = TextStyle(
      color: scheme.onSurface,
      fontSize: 24,
      fontWeight: FontWeight.w400,
    );
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
      child: useDialerFont
          ? Text(
              title,
              style: context.dialerTextStyle(DialerFontRole.pageTitle, style),
            )
          : Text(title, style: style),
    );
  }
}

/// Subsection label inside a settings sheet (e.g. "App font", "Apply to").
class SettingsPickerSectionLabel extends StatelessWidget {
  const SettingsPickerSectionLabel({
    super.key,
    required this.label,
    this.useDialerFont = true,
  });

  final String label;
  final bool useDialerFont;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final style = TextStyle(
      color: scheme.onSurfaceVariant,
      fontSize: 13,
      fontWeight: FontWeight.w600,
    );
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 8, 24, 4),
      child: useDialerFont
          ? Text(
              label,
              style: context.dialerTextStyle(DialerFontRole.sectionHeader, style),
            )
          : Text(label, style: style),
    );
  }
}

/// Selectable row used across settings picker bottom sheets.
class SettingsPickerOption extends StatelessWidget {
  const SettingsPickerOption({
    super.key,
    this.icon,
    this.leading,
    required this.label,
    required this.subtitle,
    required this.selected,
    required this.onTap,
    this.labelStyle,
    this.subtitleStyle,
  }) : assert(icon != null || leading != null);

  final IconData? icon;
  final Widget? leading;
  final String label;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;
  final TextStyle? labelStyle;
  final TextStyle? subtitleStyle;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final Widget leadingWidget = leading ??
        SizedBox(
          width: 40,
          height: 40,
          child: Icon(
            icon,
            color: selected ? scheme.primary : scheme.onSurface,
            size: 22,
          ),
        );

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Container(
            decoration: BoxDecoration(
              color: selected
                  ? scheme.primary.withValues(alpha: 0.1)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                leadingWidget,
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label,
                        style: labelStyle ??
                            context.dialerTextStyle(
                              DialerFontRole.primary,
                              TextStyle(
                                color: scheme.onSurface,
                                fontSize: 16,
                                fontWeight: selected
                                    ? FontWeight.w600
                                    : FontWeight.w400,
                              ),
                            ),
                      ),
                      if (subtitle.isNotEmpty) ...[
                        const SizedBox(height: 2),
                        Text(
                          subtitle,
                          style: subtitleStyle ??
                              context.dialerTextStyle(
                                DialerFontRole.secondary,
                                TextStyle(
                                  color: scheme.onSurfaceVariant,
                                  fontSize: 13,
                                ),
                              ),
                        ),
                      ],
                    ],
                  ),
                ),
                if (selected)
                  Icon(
                    Icons.check_circle,
                    color: scheme.primary,
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

/// Tappable row that opens a nested picker (chevron, no selection highlight).
class SettingsPickerNavRow extends StatelessWidget {
  const SettingsPickerNavRow({
    super.key,
    required this.icon,
    required this.label,
    required this.subtitle,
    required this.onTap,
    this.subtitleStyle,
  });

  final IconData icon;
  final String label;
  final String subtitle;
  final VoidCallback onTap;
  final TextStyle? subtitleStyle;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
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
                        label,
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
                          style: subtitleStyle ??
                              context.dialerTextStyle(
                                DialerFontRole.secondary,
                                TextStyle(
                                  color: scheme.onSurfaceVariant,
                                  fontSize: 13,
                                ),
                              ),
                        ),
                      ],
                    ],
                  ),
                ),
                Icon(
                  Icons.chevron_right_rounded,
                  color: scheme.outlineVariant,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Header with back affordance for nested settings sheets.
class SettingsPickerSubpageHeader extends StatelessWidget {
  const SettingsPickerSubpageHeader({
    super.key,
    required this.title,
    this.trailing,
    required this.onBack,
  });

  final String title;
  final Widget? trailing;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 16, 8),
      child: Row(
        children: [
          IconButton(
            onPressed: onBack,
            icon: const Icon(Icons.arrow_back_rounded),
            color: scheme.onSurface,
          ),
          Expanded(
            child: Text(
              title,
              style: context.dialerTextStyle(
                DialerFontRole.pageTitle,
                TextStyle(
                  color: scheme.onSurface,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}

/// Rounded surface container for settings bottom sheets.
BoxDecoration settingsPickerSheetDecoration(BuildContext context) {
  return BoxDecoration(
    color: Theme.of(context).colorScheme.surface,
    borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
  );
}

/// Standard settings bottom sheet: height follows [child], scrolls if taller than the screen.
Widget wrapSettingsPickerSheet(
  BuildContext context, {
  required Widget child,
  double maxHeightFactor = 0.92,
}) {
  final media = MediaQuery.of(context);
  final maxHeight = media.size.height * maxHeightFactor;
  return Padding(
    padding: EdgeInsets.only(bottom: media.viewInsets.bottom),
    child: SettingsPickerFontScope(
      child: Container(
        decoration: settingsPickerSheetDecoration(context),
        child: SafeArea(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: maxHeight),
            child: SingleChildScrollView(
              child: child,
            ),
          ),
        ),
      ),
    ),
  );
}

/// Wraps sheet content with [DialerFontScope] for sheets surface typography.
class SettingsPickerFontScope extends StatelessWidget {
  const SettingsPickerFontScope({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DialerFontScope(
      surface: DialerFontSurface.sheets,
      child: child,
    );
  }
}
