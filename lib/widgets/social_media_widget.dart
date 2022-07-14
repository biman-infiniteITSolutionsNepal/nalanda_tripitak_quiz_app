import 'package:flutter/material.dart';

class SocialMediaWidget extends StatelessWidget {

  final Function onPressed;
    final String mediaName;
    final double width;
    final Color buttonColor;
    double buttonElevation = 20;

  SocialMediaWidget({
    required this.onPressed, required this.mediaName, required this.buttonColor, required this.width
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed(), 
      child: Text(mediaName),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        minimumSize: MaterialStateProperty.all(Size(width, 50)),
        backgroundColor: MaterialStateProperty.all(buttonColor),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        shadowColor: MaterialStateProperty.all(buttonColor),
        elevation: MaterialStateProperty.all(buttonElevation),
      ),
    );
  }
}