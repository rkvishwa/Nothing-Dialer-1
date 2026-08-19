import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../main.dart' as main_app;
import '../services/contact_photo_cache.dart';
import '../services/contact_photo_reader.dart';
import '../services/contact_photo_style.dart';
import 'avatar_shape_clipper.dart';

/// Shared contact avatar: respects photo mode/shape settings, lazy-loads thumbnails.
class ContactAvatar extends StatefulWidget {
  const ContactAvatar({
    super.key,
    required this.contactId,
    required this.displayName,
    required this.size,
    this.thumbnail,
    this.photo,
    this.preferFullPhoto = false,
    this.fontSizeFactor = 0.38,
    this.surface = ContactAvatarSurface.general,
    this.onTap,
  });

  final String contactId;
  final String displayName;
  final double size;
  final Uint8List? thumbnail;
  final Uint8List? photo;
  final bool preferFullPhoto;
  final double fontSizeFactor;
  final ContactAvatarSurface surface;
  final VoidCallback? onTap;

  @override
  State<ContactAvatar> createState() => _ContactAvatarState();
}

class _ContactAvatarState extends State<ContactAvatar> {
  Uint8List? _loadedBytes;

  @override
  void initState() {
    super.initState();
    main_app.contactPhotoModeNotifier.addListener(_onPhotoModeChanged);
    main_app.recentsShowContactPhotosNotifier.addListener(_onPhotoModeChanged);
    ContactPhotoCache.invalidationNotifier.addListener(
      _onPhotoCacheInvalidated,
    );
    _maybeLoadPhoto();
  }

  @override
  void dispose() {
    main_app.contactPhotoModeNotifier.removeListener(_onPhotoModeChanged);
    main_app.recentsShowContactPhotosNotifier.removeListener(
      _onPhotoModeChanged,
    );
    ContactPhotoCache.invalidationNotifier.removeListener(
      _onPhotoCacheInvalidated,
    );
    super.dispose();
  }

  void _onPhotoCacheInvalidated() {
    final invalidatedId =
        ContactPhotoCache.invalidationNotifier.value.contactId;
    if (invalidatedId != null && invalidatedId != widget.contactId) return;

    // A replacement is put in the cache before its notification is sent.
    // Prefer it over widget properties, which still contain the previous photo
    // until the parent rebuilds.
    final cached = ContactPhotoCache.get(widget.contactId);
    if (cached != null) {
      _loadedBytes = cached;
      if (mounted) setState(() {});
      return;
    }

    // A targeted invalidation without cached bytes means the photo was removed
    // or changed externally. Do not restore stale inline widget bytes.
    _loadedBytes = null;
    if (_showsPhotos &&
        widget.contactId.isNotEmpty &&
        !ContactPhotoCache.isMissing(widget.contactId)) {
      unawaited(_loadFromProvider());
    }
    if (mounted) setState(() {});
  }

  bool get _showsPhotos {
    if (!main_app.contactPhotoModeNotifier.value.showsPhotos) return false;
    if (widget.surface == ContactAvatarSurface.recents) {
      return main_app.recentsShowContactPhotosNotifier.value;
    }
    return true;
  }

  ContactAvatarShape get _shape {
    if (widget.surface == ContactAvatarSurface.recents) {
      return main_app.recentsContactAvatarShapeNotifier.value;
    }
    return main_app.contactAvatarShapeNotifier.value;
  }

  ContactAvatarStyle get _style {
    if (widget.surface == ContactAvatarSurface.recents) {
      return main_app.recentsContactAvatarStyleNotifier.value;
    }
    return main_app.contactAvatarStyleNotifier.value;
  }

  void _onPhotoModeChanged() {
    if (!_showsPhotos) return;
    final previous = _loadedBytes;
    _maybeLoadPhoto();
    if (mounted && !identical(previous, _loadedBytes)) {
      setState(() {});
    }
  }

  @override
  void didUpdateWidget(covariant ContactAvatar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.contactId != widget.contactId ||
        oldWidget.thumbnail != widget.thumbnail ||
        oldWidget.photo != widget.photo) {
      _loadedBytes = null;
      _maybeLoadPhoto();
    }
  }

  void _maybeLoadPhoto() {
    if (!_showsPhotos) return;
    if (widget.contactId.isEmpty) return;
    if (ContactPhotoCache.isMissing(widget.contactId)) return;

    final cached = ContactPhotoCache.get(widget.contactId);
    if (cached != null) {
      _loadedBytes = cached;
      return;
    }

    unawaited(_loadFromProvider());
  }

  Future<void> _loadFromProvider() async {
    final requestedContactId = widget.contactId;
    final preferFullPhoto = widget.preferFullPhoto;
    try {
      final bytes = await ContactPhotoReader.load(
        requestedContactId,
        preferFullPhoto: preferFullPhoto,
      );
      if (!mounted || widget.contactId != requestedContactId) {
        return;
      }
      if (bytes == null) {
        ContactPhotoCache.markMissing(requestedContactId);
        return;
      }
      ContactPhotoCache.put(requestedContactId, bytes);
      setState(() => _loadedBytes = bytes);
    } catch (_) {}
  }

  String _initials(String name) {
    final parts = name.trim().split(' ');
    if (parts.isEmpty || parts.first.isEmpty) return '?';
    if (parts.length == 1) return parts[0][0].toUpperCase();
    return '${parts[0][0]}${parts.last[0]}'.toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: Listenable.merge([
        main_app.contactPhotoModeNotifier,
        main_app.contactAvatarShapeNotifier,
        main_app.contactAvatarStyleNotifier,
        main_app.recentsShowContactPhotosNotifier,
        main_app.recentsContactAvatarShapeNotifier,
        main_app.recentsContactAvatarStyleNotifier,
      ]),
      builder: (context, _) {
        final shape = _shape;
        final style = _style;
        final outlineColor = Theme.of(context).colorScheme.outlineVariant;
        final border = avatarShapeBorder(shape, style: style, outlineColor: outlineColor);

        final bytes = _showsPhotos ? _loadedBytes : null;

        Widget child;
        if (bytes != null) {
          final pixelSize =
              (widget.size * MediaQuery.devicePixelRatioOf(context))
                  .round()
                  .clamp(1, 2048)
                  .toInt();
          child = Image.memory(
            bytes,
            width: widget.size,
            height: widget.size,
            fit: BoxFit.cover,
            gaplessPlayback: true,
            cacheWidth: pixelSize,
            cacheHeight: pixelSize,
          );
        } else {
          child = Center(
            child: Text(
              _initials(widget.displayName),
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: widget.size * widget.fontSizeFactor,
                fontWeight: FontWeight.w300,
              ),
            ),
          );
        }

        child = Material(
          color: Colors.transparent,
          shape: border,
          clipBehavior: Clip.antiAlias,
          child: SizedBox(
            width: widget.size,
            height: widget.size,
            child: child,
          ),
        );

        if (widget.onTap != null) {
          child = InkWell(
            onTap: widget.onTap,
            customBorder: border,
            child: child,
          );
        }

        return child;
      },
    );
  }
}

/// Preview chip for shape picker in settings.
class AvatarShapePreview extends StatelessWidget {
  const AvatarShapePreview({
    super.key,
    required this.shape,
    required this.style,
    required this.selected,
    required this.onTap,
    this.size = 52,
    this.semanticLabel,
  });

  final ContactAvatarShape shape;
  final ContactAvatarStyle style;
  final bool selected;
  final VoidCallback onTap;
  final double size;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final border = avatarShapeBorder(
      shape,
      style: style,
      outlineColor: selected ? scheme.primary : scheme.outlineVariant,
      width: selected ? 2 : 1.5,
    );

    Widget child = SizedBox(
      width: size,
      height: size,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: onTap,
                customBorder: border,
                child: Material(
                  color: selected
                      ? scheme.primary.withValues(alpha: 0.12)
                      : scheme.surface,
                  shape: border,
                  clipBehavior: Clip.antiAlias,
                  child: CustomPaint(
                    painter: _ShapePreviewPainter(
                      shape: shape,
                      style: style,
                      color: selected ? scheme.primary : scheme.onSurfaceVariant,
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (selected)
            Positioned(
              right: -2,
              bottom: -2,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: scheme.primary,
                  shape: BoxShape.circle,
                  border: Border.all(color: scheme.surface, width: 1.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2),
                  child: Icon(
                    Icons.check_rounded,
                    size: size * 0.24,
                    color: scheme.onPrimary,
                  ),
                ),
              ),
            ),
        ],
      ),
    );

    if (semanticLabel != null) {
      child = Semantics(
        button: true,
        selected: selected,
        label: semanticLabel,
        child: child,
      );
    }

    return child;
  }
}

class _ShapePreviewPainter extends CustomPainter {
  _ShapePreviewPainter({
    required this.shape,
    required this.style,
    required this.color,
  });

  final ContactAvatarShape shape;
  final ContactAvatarStyle style;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final clipper = AvatarShapeClipper(shape, style: style);
    final path = clipper.getClip(size);
    canvas.save();
    canvas.clipPath(path);
    canvas.drawRect(
      Offset.zero & size,
      Paint()..color = color.withValues(alpha: 0.25),
    );
    canvas.restore();
    canvas.drawPath(
      path,
      Paint()
        ..color = color
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.5,
    );
  }

  @override
  bool shouldRepaint(covariant _ShapePreviewPainter oldDelegate) {
    return oldDelegate.shape != shape ||
        oldDelegate.style != style ||
        oldDelegate.color != color;
  }
}
