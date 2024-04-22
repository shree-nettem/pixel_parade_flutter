import 'package:flutter/material.dart';

class NeoText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight fontWeight;

  const NeoText({
    super.key,
    required this.text,
    required this.size,
    required this.color,
    required this.fontWeight,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontFamily: "Inter",
          fontWeight: fontWeight),
      textAlign: TextAlign.center,
    );
  }
}
