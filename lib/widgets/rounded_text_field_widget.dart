// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
class TextFieldWidget extends StatelessWidget{
      final String _textFieldHint;

      TextFieldWidget(this._textFieldHint);

      @override 
      Widget build (BuildContext context){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextField(
            style: TextStyle(color: Color(0xff354A33)),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                borderSide: BorderSide(width: 2,color: Color(0xff354A33)),
              ),
              hintText: _textFieldHint,
              contentPadding: const EdgeInsets.symmetric(horizontal:15, vertical: 23),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
              )
            ),
          ),
        );
      }
    }