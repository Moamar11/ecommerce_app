import 'package:flutter/material.dart';

class BoldTextWidget extends StatelessWidget {
  String textToDisplay;
  double fontSize;
  Color textColor;
  TextAlign textAlign;
  BoldTextWidget({
    super.key,
    required this.textToDisplay,
    this.fontSize = 18.0,
    this.textColor = Colors.black,
    this.textAlign = TextAlign.left,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textToDisplay,
      style: TextStyle(
        fontSize: fontSize,
        color: textColor,
        fontWeight: FontWeight.bold,
      ),
      textAlign: textAlign,
    );
  }
}
