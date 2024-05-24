import 'package:flutter/material.dart';

class ResponsiveText extends StatelessWidget {
  final String text;
  final double minFontSize;
  final double maxFontSize;

  const ResponsiveText(
      {super.key,
      required this.text,
      required this.minFontSize,
      required this.maxFontSize});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final scaleFactor = screenWidth / 400; // 400 es un ancho de referencia

    double fontSize = scaleFactor * 16;
    fontSize = fontSize.clamp(minFontSize, maxFontSize);

    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
