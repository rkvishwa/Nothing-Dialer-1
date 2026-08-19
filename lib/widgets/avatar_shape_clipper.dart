import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../services/contact_photo_style.dart';

/// Clips a square avatar to the selected [ContactAvatarShape].
class AvatarShapeClipper extends CustomClipper<Path> {
  AvatarShapeClipper(this.shape, {this.style = ContactAvatarStyle.normal});

  final ContactAvatarShape shape;
  final ContactAvatarStyle style;

  @override
  Path getClip(Size size) {
    final rect = Offset.zero & size;
    final path = _getBasePath(rect);
    if (style == ContactAvatarStyle.nothing) {
      return _pixelatePath(path, rect);
    }
    return path;
  }

  Path _getBasePath(Rect rect) {
    switch (shape) {
      case ContactAvatarShape.circle:
        return Path()..addOval(rect);
      case ContactAvatarShape.roundedSquare:
        return Path()..addRRect(
          RRect.fromRectAndRadius(rect, Radius.circular(rect.width * 0.18)),
        );
      case ContactAvatarShape.squircle:
        return Path()..addRRect(
          RRect.fromRectAndRadius(rect, Radius.circular(rect.width * 0.38)),
        );
      case ContactAvatarShape.diamond:
        return _regularPolygonPath(rect, 4, rotation: math.pi / 4);
      case ContactAvatarShape.hexagon:
        return _regularPolygonPath(rect, 6, rotation: -math.pi / 2);
      case ContactAvatarShape.octagon:
        return _regularPolygonPath(rect, 8, rotation: -math.pi / 2);
      case ContactAvatarShape.star:
        return _starPath(rect);
      case ContactAvatarShape.shield:
        return _shieldPath(rect);
      case ContactAvatarShape.pentagon:
        return _regularPolygonPath(rect, 5, rotation: -math.pi / 2);
    }
  }

  Path _pixelatePath(Path original, Rect bounds) {
    final path = Path();
    const grid = 8;
    final cellW = bounds.width / grid;
    final cellH = bounds.height / grid;
    for (var row = 0; row < grid; row++) {
      for (var col = 0; col < grid; col++) {
        final cx = bounds.left + col * cellW + cellW / 2;
        final cy = bounds.top + row * cellH + cellH / 2;
        if (original.contains(Offset(cx, cy))) {
          path.addRect(
            Rect.fromLTWH(
              bounds.left + col * cellW,
              bounds.top + row * cellH,
              cellW,
              cellH,
            ),
          );
        }
      }
    }
    return path;
  }

  Path _regularPolygonPath(Rect rect, int sides, {required double rotation}) {
    final path = Path();
    final cx = rect.center.dx;
    final cy = rect.center.dy;
    final radius = rect.width / 2;
    for (var i = 0; i < sides; i++) {
      final angle = rotation + (2 * math.pi * i / sides);
      final x = cx + radius * math.cos(angle);
      final y = cy + radius * math.sin(angle);
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();
    return path;
  }

  Path _starPath(Rect rect) {
    final path = Path();
    final cx = rect.center.dx;
    final cy = rect.center.dy;
    final outerR = rect.width / 2;
    final innerR = outerR * 0.42;
    const points = 5;
    for (var i = 0; i < points * 2; i++) {
      final r = i.isEven ? outerR : innerR;
      final angle = -math.pi / 2 + i * math.pi / points;
      final x = cx + r * math.cos(angle);
      final y = cy + r * math.sin(angle);
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();
    return path;
  }

  Path _shieldPath(Rect rect) {
    final path = Path();
    final w = rect.width;
    final h = rect.height;
    path.moveTo(w / 2, rect.top);
    path.lineTo(rect.right, h * 0.14);
    path.cubicTo(
      rect.right,
      h * 0.52,
      w * 0.72,
      h * 0.88,
      w / 2,
      rect.bottom,
    );
    path.cubicTo(
      w * 0.28,
      h * 0.88,
      rect.left,
      h * 0.52,
      rect.left,
      h * 0.14,
    );
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant AvatarShapeClipper oldClipper) {
    return oldClipper.shape != shape || oldClipper.style != style;
  }
}

/// Outline shape matching [AvatarShapeClipper] for borders.
ShapeBorder avatarShapeBorder(
  ContactAvatarShape shape, {
  ContactAvatarStyle style = ContactAvatarStyle.normal,
  required Color outlineColor,
  double width = 1.5,
}) {
  final side = BorderSide(color: outlineColor, width: width);
  if (style == ContactAvatarStyle.nothing) {
    return _AvatarPathShapeBorder(shape: shape, style: style, side: side);
  }
  switch (shape) {
    case ContactAvatarShape.circle:
      return CircleBorder(side: side);
    case ContactAvatarShape.roundedSquare:
      return RoundedRectangleBorder(
        side: side,
        borderRadius: BorderRadius.circular(8),
      );
    case ContactAvatarShape.squircle:
      return RoundedRectangleBorder(
        side: side,
        borderRadius: BorderRadius.circular(18),
      );
    case ContactAvatarShape.diamond:
    case ContactAvatarShape.hexagon:
    case ContactAvatarShape.octagon:
    case ContactAvatarShape.star:
    case ContactAvatarShape.shield:
    case ContactAvatarShape.pentagon:
      return _AvatarPathShapeBorder(shape: shape, style: style, side: side);
  }
}

class _AvatarPathShapeBorder extends OutlinedBorder {
  const _AvatarPathShapeBorder({
    required this.shape,
    this.style = ContactAvatarStyle.normal,
    super.side = BorderSide.none,
  });

  final ContactAvatarShape shape;
  final ContactAvatarStyle style;

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(side.width);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    final inner = rect.deflate(side.width / 2);
    return AvatarShapeClipper(shape, style: style).getClip(inner.size).shift(inner.topLeft);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return AvatarShapeClipper(shape, style: style).getClip(rect.size).shift(rect.topLeft);
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    if (side.style == BorderStyle.none || side.width == 0) return;
    final paint = side.toPaint();
    canvas.drawPath(getOuterPath(rect), paint);
  }

  @override
  ShapeBorder scale(double t) {
    return _AvatarPathShapeBorder(shape: shape, style: style, side: side.scale(t));
  }

  @override
  OutlinedBorder copyWith({BorderSide? side}) {
    return _AvatarPathShapeBorder(shape: shape, style: style, side: side ?? this.side);
  }
}
