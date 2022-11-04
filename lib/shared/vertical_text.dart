import 'package:flutter/material.dart';

class VerticalText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign textAlign;
  final TextDirection textDirection;
  final double textScaleFactor;
  final int maxLines;
  final String semanticsLabel;
  final TextWidthBasis textWidthBasis;

  const VerticalText(
    this.text, {
    Key? key,
    this.style = const TextStyle(),
    this.textAlign = TextAlign.start,
    this.textDirection = TextDirection.ltr,
    this.textScaleFactor = 1.0,
    this.maxLines = 1,
    this.semanticsLabel = '',
    this.textWidthBasis = TextWidthBasis.parent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: Text(
        text,
        style: style,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
      ),
    );
  }
}
