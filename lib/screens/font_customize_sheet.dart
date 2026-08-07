import 'package:flutter/material.dart';
import 'package:nothing_dialer/l10n/app_localizations.dart';

import '../services/app_font_config.dart';
import '../services/app_fonts.dart';
import '../services/noto_font_pack.dart';
import '../widgets/settings_picker_sheet.dart';
import 'font_settings_sheet.dart' show fontChoiceLabel, roleLabel, surfaceLabel;

Future<void> showFontCustomizeSheet(
  BuildContext context, {
  required AppFontConfig config,
  required Future<void> Function(AppFontConfig config) onCommit,
  required Future<void> Function() ensureNotoDownloaded,
}) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    isDismissible: true,
    enableDrag: true,
    backgroundColor: Colors.transparent,
    builder: (sheetContext) => _FontCustomizeSheet(
      parentContext: context,
      initialConfig: config,
      onCommit: onCommit,
      ensureNotoDownloaded: ensureNotoDownloaded,
    ),
  );
}

class _SurfaceGroup {
  const _SurfaceGroup({required this.title, required this.surfaces});

  final String title;
  final List<DialerFontSurface> surfaces;
}

IconData _surfaceIcon(DialerFontSurface surface) {
  switch (surface) {
    case DialerFontSurface.recents:
      return Icons.history_rounded;
    case DialerFontSurface.contacts:
      return Icons.contacts_rounded;
    case DialerFontSurface.favourites:
      return Icons.star_rounded;
    case DialerFontSurface.contactDetail:
      return Icons.person_rounded;
    case DialerFontSurface.callHistory:
      return Icons.list_alt_rounded;
    case DialerFontSurface.blocked:
      return Icons.block_rounded;
    case DialerFontSurface.dialpad:
      return Icons.dialpad_rounded;
    case DialerFontSurface.inCall:
      return Icons.call_rounded;
    case DialerFontSurface.defaultDialer:
      return Icons.phone_in_talk_rounded;
    case DialerFontSurface.shell:
      return Icons.apps_rounded;
    case DialerFontSurface.settings:
      return Icons.settings_rounded;
    case DialerFontSurface.sheets:
      return Icons.layers_rounded;
  }
}

String _surfaceListSubtitle(
  AppLocalizations l10n,
  AppFontConfig config,
  DialerFontSurface surface,
) {
  final map = config.custom[surface];
  if (map == null || map.isEmpty) return l10n.fontUsesAppDefault;
  return l10n.fontCustomizeRolesCount(map.length);
}

DialerFontChoice _roleChoice(
  AppFontConfig config,
  DialerFontSurface surface,
  DialerFontRole role,
) {
  return config.custom[surface]?[role] ?? config.defaultChoice;
}

bool _surfaceHasOverrides(AppFontConfig config, DialerFontSurface surface) {
  final map = config.custom[surface];
  return map != null && map.isNotEmpty;
}

class _FontCustomizeSheet extends StatefulWidget {
  const _FontCustomizeSheet({
    required this.parentContext,
    required this.initialConfig,
    required this.onCommit,
    required this.ensureNotoDownloaded,
  });

  final BuildContext parentContext;
  final AppFontConfig initialConfig;
  final Future<void> Function(AppFontConfig config) onCommit;
  final Future<void> Function() ensureNotoDownloaded;

  @override
  State<_FontCustomizeSheet> createState() => _FontCustomizeSheetState();
}

class _FontCustomizeSheetState extends State<_FontCustomizeSheet> {
  late final ValueNotifier<AppFontConfig> _configNotifier;
  DialerFontSurface? _detailSurface;

  @override
  void initState() {
    super.initState();
    _configNotifier = ValueNotifier(widget.initialConfig);
  }

  @override
  void dispose() {
    _configNotifier.dispose();
    super.dispose();
  }

  Future<void> _updateConfig(AppFontConfig next) async {
    _configNotifier.value = next;
    await widget.onCommit(next);
  }

  List<_SurfaceGroup> _groups(AppLocalizations l10n) => [
        _SurfaceGroup(
          title: l10n.fontCustomizeGroupCalls,
          surfaces: const [
            DialerFontSurface.recents,
            DialerFontSurface.contacts,
            DialerFontSurface.favourites,
            DialerFontSurface.contactDetail,
            DialerFontSurface.callHistory,
            DialerFontSurface.blocked,
          ],
        ),
        _SurfaceGroup(
          title: l10n.fontCustomizeGroupDialer,
          surfaces: const [
            DialerFontSurface.dialpad,
            DialerFontSurface.inCall,
            DialerFontSurface.defaultDialer,
          ],
        ),
        _SurfaceGroup(
          title: l10n.fontCustomizeGroupApp,
          surfaces: const [
            DialerFontSurface.shell,
            DialerFontSurface.settings,
            DialerFontSurface.sheets,
          ],
        ),
      ];

  Future<void> _pickRoleFont(
    DialerFontSurface surface,
    DialerFontRole role,
  ) async {
    final l10n = AppLocalizations.of(widget.parentContext);
    final current = _roleChoice(_configNotifier.value, surface, role);
    final chosen = await showModalBottomSheet<DialerFontChoice>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) {
        return wrapSettingsPickerSheet(
          ctx,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SettingsPickerHandle(),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
                child: Text(
                  l10n.fontRolePickerTitle(roleLabel(l10n, role)),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(ctx).colorScheme.onSurface,
                  ),
                ),
              ),
              for (final choice in DialerFontChoice.values)
                SettingsPickerOption(
                  icon: Icons.text_fields_rounded,
                  label: fontChoiceLabel(l10n, choice),
                  subtitle: l10n.fontPreviewSample,
                  labelStyle: previewTextStyleForChoice(
                    choice,
                    TextStyle(
                      fontSize: 16,
                      fontWeight: current == choice
                          ? FontWeight.w600
                          : FontWeight.w400,
                      color: Theme.of(ctx).colorScheme.onSurface,
                    ),
                    role: role,
                  ),
                  subtitleStyle: previewTextStyleForChoice(
                    choice,
                    TextStyle(
                      fontSize: 13,
                      color: Theme.of(ctx).colorScheme.onSurfaceVariant,
                    ),
                    role: role,
                  ),
                  selected: current == choice,
                  onTap: () => Navigator.pop(ctx, choice),
                ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
    if (chosen == null || !mounted) return;
    if (chosen == DialerFontChoice.noto && !NotoFontPack.ready.value) {
      await widget.ensureNotoDownloaded();
      if (!NotoFontPack.ready.value) return;
    }
    final config = _configNotifier.value;
    final surfaceMap = Map<DialerFontRole, DialerFontChoice>.from(
      config.custom[surface] ?? {},
    );
    surfaceMap[role] = chosen;
    final custom = Map<DialerFontSurface, Map<DialerFontRole, DialerFontChoice>>.from(
      config.custom,
    );
    custom[surface] = surfaceMap;
    await _updateConfig(config.copyWith(custom: custom));
  }

  void _resetSurface(DialerFontSurface surface) {
    final config = _configNotifier.value;
    if (!_surfaceHasOverrides(config, surface)) return;
    final custom = Map<DialerFontSurface, Map<DialerFontRole, DialerFontChoice>>.from(
      config.custom,
    );
    custom.remove(surface);
    _updateConfig(config.copyWith(custom: custom));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(widget.parentContext);
    return wrapSettingsPickerSheet(
      context,
      child: ValueListenableBuilder<AppFontConfig>(
        valueListenable: _configNotifier,
        builder: (context, config, _) {
          final detail = _detailSurface;
          if (detail == null) {
            return _SurfaceListPage(
              parentContext: widget.parentContext,
              config: config,
              groups: _groups(l10n),
              onSurfaceTap: (surface) =>
                  setState(() => _detailSurface = surface),
            );
          }
          return _SurfaceDetailPage(
            parentContext: widget.parentContext,
            surface: detail,
            config: config,
            onBack: () => setState(() => _detailSurface = null),
            onReset: () => _resetSurface(detail),
            onRoleTap: (role) => _pickRoleFont(detail, role),
          );
        },
      ),
    );
  }
}

class _SurfaceListPage extends StatelessWidget {
  const _SurfaceListPage({
    required this.parentContext,
    required this.config,
    required this.groups,
    required this.onSurfaceTap,
  });

  final BuildContext parentContext;
  final AppFontConfig config;
  final List<_SurfaceGroup> groups;
  final ValueChanged<DialerFontSurface> onSurfaceTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(parentContext);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SettingsPickerHandle(),
        SettingsPickerTitle(title: l10n.fontCustomizeSection),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 12),
          child: Text(
            l10n.fontCustomizeScreenHint,
            style: TextStyle(
              fontSize: 13,
              height: 1.35,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        for (final group in groups) ...[
          SettingsPickerSectionLabel(label: group.title),
          for (final surface in group.surfaces)
            SettingsPickerNavRow(
              icon: _surfaceIcon(surface),
              label: surfaceLabel(l10n, surface),
              subtitle: _surfaceListSubtitle(l10n, config, surface),
              onTap: () => onSurfaceTap(surface),
            ),
        ],
        const SizedBox(height: 16),
      ],
    );
  }
}

class _SurfaceDetailPage extends StatelessWidget {
  const _SurfaceDetailPage({
    required this.parentContext,
    required this.surface,
    required this.config,
    required this.onBack,
    required this.onReset,
    required this.onRoleTap,
  });

  final BuildContext parentContext;
  final DialerFontSurface surface;
  final AppFontConfig config;
  final VoidCallback onBack;
  final VoidCallback onReset;
  final ValueChanged<DialerFontRole> onRoleTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(parentContext);
    final scheme = Theme.of(context).colorScheme;
    final hasOverrides = _surfaceHasOverrides(config, surface);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SettingsPickerHandle(),
        SettingsPickerSubpageHeader(
          title: surfaceLabel(l10n, surface),
          onBack: onBack,
          trailing: hasOverrides
              ? TextButton(
                  onPressed: onReset,
                  child: Text(l10n.fontResetScreen),
                )
              : null,
        ),
        for (final role in DialerFontRole.values)
          SettingsPickerNavRow(
            icon: Icons.text_format_rounded,
            label: roleLabel(l10n, role),
            subtitle: fontChoiceLabel(
              l10n,
              _roleChoice(config, surface, role),
            ),
            subtitleStyle: previewTextStyleForChoice(
              _roleChoice(config, surface, role),
              TextStyle(
                fontSize: 13,
                color: scheme.onSurfaceVariant,
              ),
              role: role,
            ),
            onTap: () => onRoleTap(role),
          ),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 8, 24, 0),
          child: Text(
            l10n.fontCustomizeScreenHint,
            style: TextStyle(
              fontSize: 13,
              height: 1.35,
              color: scheme.onSurfaceVariant,
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
