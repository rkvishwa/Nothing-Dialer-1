import 'package:flutter/material.dart';

import '../services/launcher_icon_manager.dart';
import '../services/theme_colors.dart';

/// Opens the Android launcher icon picker as a bottom sheet (matches other Settings sheets).
Future<void> showLauncherIconPicker(BuildContext context) {
  return showModalBottomSheet<void>(
    context: context,
    backgroundColor: Colors.transparent,
    builder: (sheetContext) => const _LauncherIconBottomSheet(),
  );
}

class _LauncherIconBottomSheet extends StatefulWidget {
  const _LauncherIconBottomSheet();

  @override
  State<_LauncherIconBottomSheet> createState() =>
      _LauncherIconBottomSheetState();
}

class _LauncherIconBottomSheetState extends State<_LauncherIconBottomSheet> {
  String _selectedId = LauncherIconVariant.classic.id;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final id = await LauncherIconManager.getCurrentId();
    if (mounted) {
      setState(() {
        _selectedId = id;
        _loading = false;
      });
    }
  }

  Future<void> _onSelect(LauncherIconVariant v) async {
    setState(() => _selectedId = v.id);
    try {
      final applied = await LauncherIconManager.setVariant(v);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            applied
                ? 'Icon updated. Your home screen may take a moment to refresh.'
                : 'Choice saved. The home screen icon updates in release builds.',
          ),
        ),
      );
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not change icon: $e')),
      );
      await _load();
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: scheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
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
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 12),
              child: Text(
                'App icon',
                style: TextStyle(
                  color: scheme.onSurface,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            if (_loading)
              const SizedBox(
                height: 180,
                child: Center(child: CircularProgressIndicator()),
              )
            else
              SizedBox(
                height: 196,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 8),
                  physics: const BouncingScrollPhysics(),
                  itemCount: LauncherIconVariant.all.length,
                  separatorBuilder: (_, _) => const SizedBox(width: 12),
                  itemBuilder: (context, index) {
                    final v = LauncherIconVariant.all[index];
                    return _HorizontalIconChip(
                      variant: v,
                      selected: v.id == _selectedId,
                      onTap: () => _onSelect(v),
                    );
                  },
                ),
              ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

/// Accent fill with check in the user's background color.
class _SelectionCheckBadge extends StatelessWidget {
  const _SelectionCheckBadge({
    required this.background,
    required this.accent,
  });

  final Color background;
  final Color accent;

  static const double _size = 23;

  @override
  Widget build(BuildContext context) {
    var tick = background;
    if ((tick.computeLuminance() - accent.computeLuminance()).abs() < 0.12) {
      tick = contentOnAccent(accent);
    }
    return DecoratedBox(
      decoration: BoxDecoration(
        color: accent,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.22),
            blurRadius: 5,
            offset: const Offset(0, 1.5),
          ),
        ],
        border: Border.all(
          color: background.withValues(alpha: 0.45),
          width: 1.25,
        ),
      ),
      child: SizedBox(
        width: _size,
        height: _size,
        child: Icon(
          Icons.check_rounded,
          color: tick,
          size: 15,
          weight: 900,
        ),
      ),
    );
  }
}

class _HorizontalIconChip extends StatelessWidget {
  const _HorizontalIconChip({
    required this.variant,
    required this.selected,
    required this.onTap,
  });

  final LauncherIconVariant variant;
  final bool selected;
  final VoidCallback onTap;

  static const double _iconSize = 88;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return SizedBox(
      width: 108,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(18),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 180),
                    width: _iconSize,
                    height: _iconSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      border: Border.all(
                        width: selected ? 3 : 1.5,
                        color: selected
                            ? scheme.primary
                            : scheme.outline.withValues(alpha: 0.35),
                      ),
                      boxShadow: selected
                          ? null
                          : [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.12),
                                blurRadius: 6,
                                offset: const Offset(0, 2),
                              ),
                            ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ColoredBox(
                        color: variant.previewBackground,
                        child: Image.asset(
                          variant.previewAsset,
                          width: _iconSize,
                          height: _iconSize,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  if (selected)
                    Positioned(
                      right: -4,
                      top: -4,
                      child: _SelectionCheckBadge(
                        background: Theme.of(context).scaffoldBackgroundColor,
                        accent: scheme.primary,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                variant.label,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
                      color: scheme.onSurface,
                      height: 1.2,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
