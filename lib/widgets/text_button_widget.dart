import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {

  final String buttonText;
  final Color textColor;
  final Function onPressed;

  const TextButtonWidget({
    required this.buttonText,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {onPressed();}, child: Text(buttonText, style: TextStyle(color: textColor),));
  }
}