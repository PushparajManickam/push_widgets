import 'package:flutter/material.dart';

/// PWText: A simple wrapper over Flutter's [Text] widget.
///
/// Prefixing with `PW` prevents naming collisions across apps.
class PWText extends StatelessWidget {
  /// The text to display.
  final String data;

  /// Optional style for the text.
  final TextStyle? style;

  /// Text alignment.
  final TextAlign? textAlign;

  /// Maximum number of lines to show.
  final int? maxLines;

  /// How overflowing text should be handled.
  final TextOverflow? overflow;

  /// Optional strut style.
  final StrutStyle? strutStyle;

  const PWText(
    this.data, {
    super.key,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.strutStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: style,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      strutStyle: strutStyle,
    );
  }
}