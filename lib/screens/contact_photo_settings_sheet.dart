import 'package:flutter/material.dart';
import 'package:nothing_dialer/l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart' as main_app;
import '../services/contact_photo_style.dart';
import '../widgets/avatar_shape_clipper.dart';
import '../widgets/contact_avatar.dart';
import '../widgets/settings_picker_sheet.dart';

Future<void> showContactPhotoSettingsSheet(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    isDismissible: true,
    enableDrag: true,
    backgroundColor: Colors.transparent,
    builder: (sheetContext) => const _ContactPhotoSettingsSheet(),
  );
}

String contactPhotoSettingsSubtitle(
  AppLocalizations l10n,
  ContactPhotoMode mode,
  ContactAvatarShape shape,
  ContactAvatarStyle style, {
  bool recentsShowPhotos = false,
  ContactAvatarShape recentsShape = kDefaultRecentsContactAvatarShape,
  ContactAvatarStyle recentsStyle = kDefaultRecentsContactAvatarStyle,
}) {
  final parts = <String>[
    switch (mode) {
      ContactPhotoMode.off => l10n.contactPhotoModeOff,
      ContactPhotoMode.avatar => l10n.contactPhotoModeAvatar,
      ContactPhotoMode.fullscreen => l10n.contactPhotoModeFullscreen,
    },
    contactAvatarShapeLabel(l10n, shape),
  ];

  if (recentsShowPhotos && mode.showsPhotos) {
    parts.add(l10n.recentsShowContactPhotos);
  }

  parts.add(
    '${l10n.recentsAvatarShape}: ${contactAvatarShapeLabel(l10n, recentsShape)}',
  );

  return parts.join(' · ');
}

String contactAvatarShapeLabel(
  AppLocalizations l10n,
  ContactAvatarShape shape,
) {
  return switch (shape) {
    ContactAvatarShape.circle => l10n.contactAvatarShapeCircle,
    ContactAvatarShape.roundedSquare => l10n.contactAvatarShapeRoundedSquare,
    ContactAvatarShape.squircle => l10n.contactAvatarShapeSquircle,
    ContactAvatarShape.diamond => l10n.contactAvatarShapeDiamond,
    ContactAvatarShape.hexagon => l10n.contactAvatarShapeHexagon,
    ContactAvatarShape.octagon => l10n.contactAvatarShapeOctagon,
    ContactAvatarShape.star => l10n.contactAvatarShapeStar,
    ContactAvatarShape.shield => l10n.contactAvatarShapeShield,
    ContactAvatarShape.pentagon => l10n.contactAvatarShapePentagon,
  };
}

class _ContactPhotoSettingsSheet extends StatefulWidget {
  const _ContactPhotoSettingsSheet();

  @override
  State<_ContactPhotoSettingsSheet> createState() =>
      _ContactPhotoSettingsSheetState();
}

class _ContactPhotoSettingsSheetState
    extends State<_ContactPhotoSettingsSheet> {
  ContactPhotoMode _mode = kDefaultContactPhotoMode;
  ContactAvatarShape _shape = kDefaultContactAvatarShape;
  ContactAvatarStyle _style = kDefaultContactAvatarStyle;
  bool _recentsShowPhotos = kDefaultRecentsShowContactPhotos;
  ContactAvatarShape _recentsShape = kDefaultRecentsContactAvatarShape;
  ContactAvatarStyle _recentsStyle = kDefaultRecentsContactAvatarStyle;

  @override
  void initState() {
    super.initState();
    _syncFromNotifiers();
  }

  void _syncFromNotifiers() {
    _mode = main_app.contactPhotoModeNotifier.value;
    _shape = main_app.contactAvatarShapeNotifier.value;
    _style = main_app.contactAvatarStyleNotifier.value;
    _recentsShowPhotos = main_app.recentsShowContactPhotosNotifier.value;
    _recentsShape = main_app.recentsContactAvatarShapeNotifier.value;
    _recentsStyle = main_app.recentsContactAvatarStyleNotifier.value;
  }

  Future<void> _saveMode(ContactPhotoMode mode) async {
    if (mounted) setState(() => _mode = mode);
    main_app.contactPhotoModeNotifier.value = mode;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(kContactPhotoModePrefKey, mode.prefValue);
  }

  Future<void> _saveShape(ContactAvatarShape shape) async {
    if (mounted) setState(() => _shape = shape);
    main_app.contactAvatarShapeNotifier.value = shape;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(kContactAvatarShapePrefKey, shape.prefValue);
  }

  Future<void> _saveStyle(ContactAvatarStyle style) async {
    if (mounted) setState(() => _style = style);
    main_app.contactAvatarStyleNotifier.value = style;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(kContactAvatarStylePrefKey, style.prefValue);
  }

  Future<void> _saveRecentsShowPhotos(bool value) async {
    if (mounted) setState(() => _recentsShowPhotos = value);
    main_app.recentsShowContactPhotosNotifier.value = value;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(kRecentsShowContactPhotosPrefKey, value);
  }

  Future<void> _saveRecentsShape(ContactAvatarShape shape) async {
    if (mounted) setState(() => _recentsShape = shape);
    main_app.recentsContactAvatarShapeNotifier.value = shape;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(kRecentsContactAvatarShapePrefKey, shape.prefValue);
  }

  Future<void> _saveRecentsStyle(ContactAvatarStyle style) async {
    if (mounted) setState(() => _recentsStyle = style);
    main_app.recentsContactAvatarStyleNotifier.value = style;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(kRecentsContactAvatarStylePrefKey, style.prefValue);
  }

  void _openShapeStylePicker({
    required AppLocalizations l10n,
    required String title,
    required String subtitle,
    required ContactAvatarShape initialShape,
    required ContactAvatarStyle initialStyle,
    required ValueChanged<ContactAvatarShape> onShapeSelected,
    required ValueChanged<ContactAvatarStyle> onStyleSelected,
  }) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      enableDrag: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) => _ShapeStylePickerSheet(
        title: title,
        subtitle: subtitle,
        initialShape: initialShape,
        initialStyle: initialStyle,
        onShapeSelected: onShapeSelected,
        onStyleSelected: onStyleSelected,
        labelFor: (shape) => contactAvatarShapeLabel(l10n, shape),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // initState does not re-run on hot reload; re-sync so new fields stay valid.
    _syncFromNotifiers();

    final l10n = AppLocalizations.of(context);

    return wrapSettingsPickerSheet(
      context,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SettingsPickerHandle(),
          SettingsPickerTitle(title: l10n.contactPhotos),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 20),
            child: _ContactPhotoPreviewCard(
              mode: _mode,
              shape: _shape,
              style: _style,
              recentsShowPhotos: _recentsShowPhotos,
              recentsShape: _recentsShape,
              recentsStyle: _recentsStyle,
            ),
          ),
          SettingsPickerSectionLabel(label: l10n.contactPhotoDisplayMode),
          for (final entry in _modeOptions)
            SettingsPickerOption(
              icon: entry.$2,
              label: entry.$3(l10n),
              subtitle: entry.$4(l10n),
              selected: _mode == entry.$1,
              onTap: () => _saveMode(entry.$1),
            ),
          const SizedBox(height: 8),
          SettingsPickerNavRow(
            icon: Icons.category_rounded,
            label: l10n.contactAvatarShape,
            subtitle: l10n.contactAvatarShapeSubtitle,
            onTap: () => _openShapeStylePicker(
              l10n: l10n,
              title: l10n.contactAvatarShape,
              subtitle: l10n.contactAvatarShapeSubtitle,
              initialShape: _shape,
              initialStyle: _style,
              onShapeSelected: _saveShape,
              onStyleSelected: _saveStyle,
            ),
          ),
          const SizedBox(height: 12),
          SettingsPickerSectionLabel(label: l10n.recentsContactPhotosSection),
          SettingsPickerSwitchRow(
            icon: Icons.history_rounded,
            label: l10n.recentsShowContactPhotos,
            subtitle: l10n.recentsShowContactPhotosSubtitle,
            value: _recentsShowPhotos,
            onChanged: _saveRecentsShowPhotos,
          ),
          SettingsPickerNavRow(
            icon: Icons.category_rounded,
            label: l10n.recentsAvatarShape,
            subtitle: l10n.recentsAvatarShapeSubtitle,
            onTap: () => _openShapeStylePicker(
              l10n: l10n,
              title: l10n.recentsAvatarShape,
              subtitle: l10n.recentsAvatarShapeSubtitle,
              initialShape: _recentsShape,
              initialStyle: _recentsStyle,
              onShapeSelected: _saveRecentsShape,
              onStyleSelected: _saveRecentsStyle,
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

const _modeOptions =
    <(ContactPhotoMode, IconData, String Function(AppLocalizations), String Function(AppLocalizations))>[
      (
        ContactPhotoMode.off,
        Icons.hide_image_outlined,
        _offLabel,
        _offSubtitle,
      ),
      (
        ContactPhotoMode.avatar,
        Icons.account_circle_outlined,
        _avatarLabel,
        _avatarSubtitle,
      ),
      (
        ContactPhotoMode.fullscreen,
        Icons.wallpaper_outlined,
        _fullscreenLabel,
        _fullscreenSubtitle,
      ),
    ];

String _offLabel(AppLocalizations l10n) => l10n.contactPhotoModeOff;
String _avatarLabel(AppLocalizations l10n) => l10n.contactPhotoModeAvatar;
String _fullscreenLabel(AppLocalizations l10n) =>
    l10n.contactPhotoModeFullscreen;
String _offSubtitle(AppLocalizations l10n) =>
    l10n.contactPhotoModeOffSubtitle;
String _avatarSubtitle(AppLocalizations l10n) =>
    l10n.contactPhotoModeAvatarSubtitle;
String _fullscreenSubtitle(AppLocalizations l10n) =>
    l10n.contactPhotoModeFullscreenSubtitle;

class _ContactPhotoPreviewCard extends StatelessWidget {
  const _ContactPhotoPreviewCard({
    required this.mode,
    required this.shape,
    required this.style,
    required this.recentsShowPhotos,
    required this.recentsShape,
    required this.recentsStyle,
  });

  final ContactPhotoMode mode;
  final ContactAvatarShape shape;
  final ContactAvatarStyle style;
  final bool recentsShowPhotos;
  final ContactAvatarShape recentsShape;
  final ContactAvatarStyle recentsStyle;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final scheme = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: scheme.surfaceContainerHighest.withValues(alpha: 0.45),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: scheme.outlineVariant.withValues(alpha: 0.35)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 22),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _PreviewAvatar(
                  label: l10n.contactPhotoPreviewContacts,
                  initials: 'A',
                  size: 64,
                  shape: shape,
                  style: style,
                  showPhoto: mode.showsPhotos,
                ),
                _PreviewAvatar(
                  label: l10n.contactPhotoPreviewRecents,
                  initials: 'R',
                  size: 64,
                  shape: recentsShowPhotos && mode.showsPhotos
                      ? recentsShape
                      : shape,
                  style: recentsShowPhotos && mode.showsPhotos
                      ? recentsStyle
                      : style,
                  showPhoto: mode.showsPhotos && recentsShowPhotos,
                  dimmed: mode.showsPhotos && !recentsShowPhotos,
                ),
              ],
            ),
            const SizedBox(height: 14),
            Text(
              mode.showsPhotos
                  ? (recentsShowPhotos
                      ? l10n.contactPhotoPreviewBothOn
                      : l10n.contactPhotoPreviewRecentsOff)
                  : l10n.contactPhotoModeOffSubtitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: scheme.onSurfaceVariant,
                height: 1.35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PreviewAvatar extends StatelessWidget {
  const _PreviewAvatar({
    required this.label,
    required this.initials,
    required this.size,
    required this.shape,
    required this.style,
    required this.showPhoto,
    this.dimmed = false,
  });

  final String label;
  final String initials;
  final double size;
  final ContactAvatarShape shape;
  final ContactAvatarStyle style;
  final bool showPhoto;
  final bool dimmed;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final border = avatarShapeBorder(
      shape,
      style: style,
      outlineColor: scheme.outlineVariant,
    );

    Widget avatar = Material(
      color: scheme.primary.withValues(alpha: showPhoto ? 0.18 : 0.1),
      shape: border,
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        width: size,
        height: size,
        child: Center(
          child: Text(
            initials,
            style: TextStyle(
              color: scheme.onSurface.withValues(alpha: dimmed ? 0.55 : 1),
              fontSize: size * 0.36,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );

    if (dimmed) {
      avatar = Opacity(opacity: 0.65, child: avatar);
    }

    return Column(
      children: [
        avatar,
        const SizedBox(height: 8),
        Text(
          label,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: scheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

class _ShapeStylePickerSheet extends StatefulWidget {
  const _ShapeStylePickerSheet({
    required this.title,
    required this.subtitle,
    required this.initialShape,
    required this.initialStyle,
    required this.onShapeSelected,
    required this.onStyleSelected,
    required this.labelFor,
  });

  final String title;
  final String subtitle;
  final ContactAvatarShape initialShape;
  final ContactAvatarStyle initialStyle;
  final ValueChanged<ContactAvatarShape> onShapeSelected;
  final ValueChanged<ContactAvatarStyle> onStyleSelected;
  final String Function(ContactAvatarShape shape) labelFor;

  @override
  State<_ShapeStylePickerSheet> createState() => _ShapeStylePickerSheetState();
}

class _ShapeStylePickerSheetState extends State<_ShapeStylePickerSheet> {
  late ContactAvatarShape _shape;
  late ContactAvatarStyle _style;

  @override
  void initState() {
    super.initState();
    _shape = widget.initialShape;
    _style = widget.initialStyle;
  }

  void _handleShapeSelected(ContactAvatarShape shape) {
    setState(() => _shape = shape);
    widget.onShapeSelected(shape);
  }

  void _handleStyleSelected(ContactAvatarStyle style) {
    setState(() => _style = style);
    widget.onStyleSelected(style);
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return wrapSettingsPickerSheet(
      context,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SettingsPickerHandle(),
          SettingsPickerSubpageHeader(
            title: widget.title,
            onBack: () => Navigator.pop(context),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
            child: Text(
              widget.subtitle,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: scheme.onSurfaceVariant,
                height: 1.35,
              ),
            ),
          ),
          _AvatarShapeGrid(
            selectedShape: _shape,
            selectedStyle: _style,
            onShapeSelected: _handleShapeSelected,
            onStyleSelected: _handleStyleSelected,
            labelFor: widget.labelFor,
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _AvatarShapeGrid extends StatelessWidget {
  const _AvatarShapeGrid({
    required this.selectedShape,
    required this.selectedStyle,
    required this.onShapeSelected,
    required this.onStyleSelected,
    required this.labelFor,
  });

  final ContactAvatarShape selectedShape;
  final ContactAvatarStyle selectedStyle;
  final ValueChanged<ContactAvatarShape> onShapeSelected;
  final ValueChanged<ContactAvatarStyle> onStyleSelected;
  final String Function(ContactAvatarShape shape) labelFor;

  @override
  Widget build(BuildContext context) {
    final shapes = ContactAvatarShape.values;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: _StyleTab(
                  label: 'Normal',
                  selected: selectedStyle == ContactAvatarStyle.normal,
                  onTap: () => onStyleSelected(ContactAvatarStyle.normal),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: _StyleTab(
                  label: 'Nothing style',
                  selected: selectedStyle == ContactAvatarStyle.nothing,
                  onTap: () => onStyleSelected(ContactAvatarStyle.nothing),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: shapes.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 1.0,
            ),
            itemBuilder: (context, index) {
              final shape = shapes[index];
              return Center(
                child: AvatarShapePreview(
                  shape: shape,
                  style: selectedStyle,
                  selected: selectedShape == shape,
                  size: 52,
                  semanticLabel: labelFor(shape),
                  onTap: () => onShapeSelected(shape),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _StyleTab extends StatelessWidget {
  const _StyleTab({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Material(
      color: selected ? scheme.primary.withValues(alpha: 0.12) : Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: selected ? scheme.primary : scheme.outlineVariant,
          width: selected ? 2 : 1,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: selected ? scheme.primary : scheme.onSurfaceVariant,
                fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
