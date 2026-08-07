import 'package:flutter/material.dart';

import '../extensions/dialer_text_style.dart';
import '../main.dart' as main_app;
import '../services/app_font_config.dart';
import '../services/sim_icon_colors.dart';

/// Compact SIM card badge used on Recents and in settings previews.
class SimBadge extends StatelessWidget {
  const SimBadge({
    super.key,
    required this.letter,
    required this.style,
    this.width = 16,
    this.height = 20,
    this.fontSize = 10,
  });

  final String letter;
  final SimIconResolvedStyle style;
  final double width;
  final double height;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: SimCardPainter(
        color: style.shapeColor,
        filled: style.filled,
      ),
      child: SizedBox(
        width: width,
        height: height,
        child: Center(
          child: Text(
            letter.toUpperCase(),
            style: context.dialerTextStyle(
              DialerFontRole.secondary,
              TextStyle(
                color: style.glyphColor,
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                height: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// SIM badge sized for settings / picker list rows (listens to [simIconColorsNotifier]).
class SimIconListLeading extends StatelessWidget {
  const SimIconListLeading({
    super.key,
    required this.simIndex,
    required this.label,
  });

  final int simIndex;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<SimIconColorsState>(
      valueListenable: main_app.simIconColorsNotifier,
      builder: (context, state, _) {
        final outline = Theme.of(context).colorScheme.onSurfaceVariant;
        final style = state.resolveForIndex(
          index: simIndex,
          brightness: Theme.of(context).brightness,
          themeOutline: outline,
        );
        final letter = label.trim().isNotEmpty ? label.trim()[0] : '?';
        return SizedBox(
          width: 40,
          height: 40,
          child: Center(
            child: SimBadge(
              letter: letter,
              style: style,
              width: 18,
              height: 22,
              fontSize: 11,
            ),
          ),
        );
      },
    );
  }
}

class SimCardPainter extends CustomPainter {
  SimCardPainter({required this.color, this.filled = false});

  final Color color;
  final bool filled;

  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    const double cutSize = 6.0;
    const double r = 3.0;

    path.moveTo(cutSize, 0);
    path.lineTo(size.width - r, 0);
    path.quadraticBezierTo(size.width, 0, size.width, r);
    path.lineTo(size.width, size.height - r);
    path.quadraticBezierTo(
      size.width,
      size.height,
      size.width - r,
      size.height,
    );
    path.lineTo(r, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - r);
    path.lineTo(0, cutSize);
    path.close();

    if (filled) {
      canvas.drawPath(
        path,
        Paint()
          ..color = color
          ..style = PaintingStyle.fill
          ..strokeJoin = StrokeJoin.round,
      );
    } else {
      canvas.drawPath(
        path,
        Paint()
          ..color = color
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1.2
          ..strokeJoin = StrokeJoin.round,
      );
    }
  }

  @override
  bool shouldRepaint(covariant SimCardPainter oldDelegate) =>
      oldDelegate.color != color || oldDelegate.filled != filled;
}
