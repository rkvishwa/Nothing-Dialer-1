import 'package:flutter/material.dart';

import '../extensions/dialer_text_style.dart';
import '../services/app_font_config.dart';

/// [Text] that applies the dialer font for [role] (and optional [surface]).
class DialerText extends StatelessWidget {
  const DialerText(
    this.data, {
    super.key,
    required this.role,
    this.style,
    this.surface,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.softWrap,
    this.strutStyle,
  });

  final String data;
  final DialerFontRole role;
  final TextStyle? style;
  final DialerFontSurface? surface;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final bool? softWrap;
  final StrutStyle? strutStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      softWrap: softWrap,
      strutStyle: strutStyle,
      style: context.dialerTextStyle(
        role,
        style ?? const TextStyle(),
        surface: surface,
      ),
    );
  }
}
