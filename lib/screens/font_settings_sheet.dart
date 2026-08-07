import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nothing_dialer/l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart' as main_app;
import '../services/app_font_config.dart';
import '../services/app_fonts.dart';
import '../services/noto_font_pack.dart';
import '../widgets/settings_picker_sheet.dart';
import 'font_customize_sheet.dart';

Future<void> showFontSettingsSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    isDismissible: true,
    enableDrag: true,
    backgroundColor: Colors.transparent,
    builder: (sheetContext) => _FontSettingsSheet(parentContext: context),
  );
}

String fontChoiceLabel(AppLocalizations l10n, DialerFontChoice choice) {
  switch (choice) {
    case DialerFontChoice.system:
      return l10n.fontSystem;
    case DialerFontChoice.ndot:
      return l10n.fontNdot;
    case DialerFontChoice.serif:
      return l10n.fontSerif;
    case DialerFontChoice.noto:
      return l10n.fontNoto;
  }
}

String fontChoiceChipLabel(AppLocalizations l10n, DialerFontChoice choice) {
  switch (choice) {
    case DialerFontChoice.system:
      return l10n.fontChipSystem;
    case DialerFontChoice.ndot:
      return l10n.fontChipNdot;
    case DialerFontChoice.serif:
      return l10n.fontChipSerif;
    case DialerFontChoice.noto:
      return l10n.fontChipNoto;
  }
}

String surfaceLabel(AppLocalizations l10n, DialerFontSurface surface) {
  switch (surface) {
    case DialerFontSurface.recents:
      return l10n.fontSurfaceRecents;
    case DialerFontSurface.contacts:
      return l10n.fontSurfaceContacts;
    case DialerFontSurface.settings:
      return l10n.fontSurfaceSettings;
    case DialerFontSurface.dialpad:
      return l10n.fontSurfaceDialpad;
    case DialerFontSurface.shell:
      return l10n.fontSurfaceShell;
    case DialerFontSurface.defaultDialer:
      return l10n.fontSurfaceDefaultDialer;
    case DialerFontSurface.favourites:
      return l10n.fontSurfaceFavourites;
    case DialerFontSurface.blocked:
      return l10n.fontSurfaceBlocked;
    case DialerFontSurface.contactDetail:
      return l10n.fontSurfaceContactDetail;
    case DialerFontSurface.callHistory:
      return l10n.fontSurfaceCallHistory;
    case DialerFontSurface.sheets:
      return l10n.fontSurfaceSheets;
    case DialerFontSurface.inCall:
      return l10n.fontSurfaceInCall;
  }
}

String roleLabel(AppLocalizations l10n, DialerFontRole role) {
  switch (role) {
    case DialerFontRole.pageTitle:
      return l10n.fontRolePageTitle;
    case DialerFontRole.sectionHeader:
      return l10n.fontRoleSectionHeader;
    case DialerFontRole.primary:
      return l10n.fontRolePrimary;
    case DialerFontRole.secondary:
      return l10n.fontRoleSecondary;
    case DialerFontRole.button:
      return l10n.fontRoleButton;
    case DialerFontRole.dialKey:
      return l10n.fontRoleDialKey;
  }
}

Future<void> _persistFontConfig(AppFontConfig config) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString(kFontConfigPrefKey, config.encodeForPrefs());
  main_app.fontConfigNotifier.value = config;
  try {
    await const MethodChannel('nothing_dialer/control')
        .invokeMethod<void>('notifyFontConfigChanged');
  } catch (_) {}
}

class _FontSettingsSheet extends StatefulWidget {
  const _FontSettingsSheet({required this.parentContext});

  final BuildContext parentContext;

  @override
  State<_FontSettingsSheet> createState() => _FontSettingsSheetState();
}

class _FontSettingsSheetState extends State<_FontSettingsSheet> {
  late AppFontConfig _draft;

  @override
  void initState() {
    super.initState();
    _draft = main_app.fontConfigNotifier.value;
  }

  Future<void> _commit(AppFontConfig next) async {
    setState(() => _draft = next);
    await _persistFontConfig(next);
  }

  Future<void> _downloadNoto(AppLocalizations l10n) async {
    if (NotoFontPack.downloading.value) return;
    final ok = await NotoFontPack.ensureDownloaded(force: true);
    if (!mounted) return;
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(ok ? l10n.fontNotoReady : l10n.fontNotoDownloadFailed),
        behavior: SnackBarBehavior.floating,
      ),
    );
    if (ok) {
      await _commit(_draft.copyWith(defaultChoice: DialerFontChoice.noto));
    }
  }

  Future<void> _selectFont(
    DialerFontChoice choice,
    AppLocalizations l10n,
  ) async {
    if (choice == DialerFontChoice.noto && !NotoFontPack.ready.value) {
      await _downloadNoto(l10n);
      return;
    }
    await _commit(_draft.copyWith(defaultChoice: choice));
  }

  void _showNotoInfo(AppLocalizations l10n) {
    final scheme = Theme.of(context).colorScheme;
    final alreadyDownloaded = NotoFontPack.ready.value;
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
                l10n.fontNotoDownload,
                style: TextStyle(
                  color: scheme.onSurface,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                l10n.fontNotoInfo,
                style: TextStyle(
                  color: scheme.onSurfaceVariant,
                  fontSize: 15,
                  height: 1.4,
                ),
              ),
              if (alreadyDownloaded) ...[
                const SizedBox(height: 12),
                Text(
                  l10n.fontNotoAlreadyDownloaded,
                  style: TextStyle(
                    color: scheme.primary,
                    fontSize: 15,
                    height: 1.4,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => Navigator.pop(ctx),
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

  void _openCustomizeEditor(AppLocalizations l10n) {
    showFontCustomizeSheet(
      context,
      config: _draft,
      onCommit: _commit,
      ensureNotoDownloaded: () => _downloadNoto(l10n),
    );
  }

  int _customizedScreenCount() {
    return _draft.custom.keys.where((s) {
      final map = _draft.custom[s];
      return map != null && map.isNotEmpty;
    }).length;
  }

  Widget _buildTitleRow(AppLocalizations l10n) {
    return ListenableBuilder(
      listenable: Listenable.merge([
        NotoFontPack.ready,
        NotoFontPack.downloading,
      ]),
      builder: (context, _) {
        final ready = NotoFontPack.ready.value;
        final busy = NotoFontPack.downloading.value;
        final scheme = Theme.of(context).colorScheme;

        return Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Row(
            children: [
              Expanded(
                child: SettingsPickerTitle(title: l10n.fontPickerTitle),
              ),
              if (ready && !busy)
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Tooltip(
                    message: l10n.fontNotoReady,
                    child: InkWell(
                      onTap: () => _showNotoInfo(l10n),
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: scheme.primary.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.check_rounded,
                              size: 14,
                              color: scheme.primary,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              l10n.fontChipNoto,
                              style: TextStyle(
                                color: scheme.primary,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildFontCards(AppLocalizations l10n) {
    final choices = DialerFontChoice.values;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1.35,
        children: [
          for (final choice in choices)
            _FontChoiceCard(
              choice: choice,
              label: fontChoiceChipLabel(l10n, choice),
              sample: l10n.fontPreviewSample,
              selected: _draft.defaultChoice == choice,
              onTap: () => _selectFont(choice, l10n),
            ),
        ],
      ),
    );
  }

  /// Prominent when not downloaded; compact progress while downloading.
  Widget _buildMultilingualCallout(AppLocalizations l10n) {
    return ListenableBuilder(
      listenable: Listenable.merge([
        NotoFontPack.ready,
        NotoFontPack.downloading,
        NotoFontPack.progress,
        NotoFontPack.completedCount,
        NotoFontPack.totalCount,
      ]),
      builder: (context, _) {
        final ready = NotoFontPack.ready.value;
        final busy = NotoFontPack.downloading.value;
        if (ready && !busy) return const SizedBox.shrink();

        final scheme = Theme.of(context).colorScheme;
        final progress = NotoFontPack.progress.value;
        final done = NotoFontPack.completedCount.value;
        final total = NotoFontPack.totalCount.value;

        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
          child: Material(
            color: scheme.primary.withValues(alpha: 0.08),
            borderRadius: BorderRadius.circular(16),
            child: InkWell(
              onTap: busy ? null : () => _downloadNoto(l10n),
              borderRadius: BorderRadius.circular(16),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(14, 12, 8, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: scheme.primary.withValues(alpha: 0.14),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            busy
                                ? Icons.downloading_rounded
                                : Icons.download_rounded,
                            color: scheme.primary,
                            size: 20,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                busy
                                    ? l10n.fontNotoDownloading
                                    : l10n.fontNotoDownload,
                                style: TextStyle(
                                  color: scheme.onSurface,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                busy && total > 0
                                    ? '${(progress * 100).round()}% · $done / $total'
                                    : l10n.fontNotoUseAfterDownload,
                                style: TextStyle(
                                  color: scheme.onSurfaceVariant,
                                  fontSize: 12,
                                  height: 1.25,
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          tooltip: l10n.fontNotoDownload,
                          onPressed: () => _showNotoInfo(l10n),
                          icon: Icon(
                            Icons.info_outline_rounded,
                            color: scheme.onSurfaceVariant,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    if (busy) ...[
                      const SizedBox(height: 10),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(999),
                        child: LinearProgressIndicator(
                          value: progress > 0 ? progress : null,
                          minHeight: 4,
                          backgroundColor: scheme.surface.withValues(
                            alpha: 0.55,
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(widget.parentContext);

    return wrapSettingsPickerSheet(
      context,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SettingsPickerHandle(),
          _buildTitleRow(l10n),
          SettingsPickerSectionLabel(label: l10n.fontAppWide),
          _buildFontCards(l10n),
          _buildMultilingualCallout(l10n),
          SettingsPickerSectionLabel(label: l10n.fontApplyTo),
          SettingsPickerOption(
            icon: Icons.title_rounded,
            label: l10n.fontApplyTitlesOnly,
            subtitle: l10n.fontApplyTitlesOnlySubtitle,
            selected: _draft.applyMode == DialerFontApplyMode.titlesOnly,
            onTap: () => _commit(
              _draft.copyWith(applyMode: DialerFontApplyMode.titlesOnly),
            ),
          ),
          SettingsPickerOption(
            icon: Icons.apps_rounded,
            label: l10n.fontApplyEntireApp,
            subtitle: l10n.fontApplyEntireAppSubtitle,
            selected: _draft.applyMode == DialerFontApplyMode.entireApp,
            onTap: () => _commit(
              _draft.copyWith(applyMode: DialerFontApplyMode.entireApp),
            ),
          ),
          SettingsPickerOption(
            icon: Icons.tune_rounded,
            label: l10n.fontApplyCustomize,
            subtitle: l10n.fontApplyCustomizeSubtitle,
            selected: _draft.applyMode == DialerFontApplyMode.customize,
            onTap: () async {
              final openingCustomize =
                  _draft.applyMode != DialerFontApplyMode.customize;
              await _commit(
                _draft.copyWith(applyMode: DialerFontApplyMode.customize),
              );
              if (mounted && openingCustomize) {
                _openCustomizeEditor(l10n);
              }
            },
          ),
          if (_draft.applyMode == DialerFontApplyMode.customize)
            SettingsPickerNavRow(
              icon: Icons.dashboard_customize_rounded,
              label: l10n.fontCustomizeSection,
              subtitle: _customizedScreenCount() > 0
                  ? l10n.fontSubtitleCustomize
                  : l10n.fontApplyCustomizeSubtitle,
              onTap: () => _openCustomizeEditor(l10n),
            ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class _FontChoiceCard extends StatelessWidget {
  const _FontChoiceCard({
    required this.choice,
    required this.label,
    required this.sample,
    required this.selected,
    required this.onTap,
  });

  final DialerFontChoice choice;
  final String label;
  final String sample;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final borderColor = selected
        ? scheme.primary
        : scheme.outlineVariant.withValues(alpha: 0.55);
    final fill = selected
        ? scheme.primary.withValues(alpha: 0.1)
        : scheme.surfaceContainerHighest.withValues(alpha: 0.35);

    return Material(
      color: fill,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: borderColor,
              width: selected ? 1.6 : 1,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Aa',
                    style: previewTextStyleForChoice(
                      choice,
                      TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        height: 1.1,
                        color: selected ? scheme.primary : scheme.onSurface,
                      ),
                      role: DialerFontRole.primary,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: previewTextStyleForChoice(
                      choice,
                      TextStyle(
                        fontSize: 13,
                        fontWeight:
                            selected ? FontWeight.w600 : FontWeight.w500,
                        color: selected ? scheme.primary : scheme.onSurface,
                      ),
                      role: DialerFontRole.primary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    sample,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: previewTextStyleForChoice(
                      choice,
                      TextStyle(
                        fontSize: 11,
                        color: scheme.onSurfaceVariant,
                      ),
                      role: DialerFontRole.secondary,
                    ),
                  ),
                ],
              ),
              if (selected)
                Positioned(
                  top: 0,
                  right: 0,
                  child: Icon(
                    Icons.check_circle_rounded,
                    size: 18,
                    color: scheme.primary,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Settings list subtitle for the Font tile.
String fontSettingsSubtitle(AppLocalizations l10n, AppFontConfig config) {
  final name = fontChoiceLabel(l10n, config.defaultChoice);
  switch (config.applyMode) {
    case DialerFontApplyMode.entireApp:
      return l10n.fontSubtitleEntireApp(name);
    case DialerFontApplyMode.titlesOnly:
      return l10n.fontSubtitleTitlesOnly(name);
    case DialerFontApplyMode.customize:
      return l10n.fontSubtitleCustomize;
  }
}
