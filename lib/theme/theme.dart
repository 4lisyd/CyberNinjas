import 'package:flutter/material.dart';

ThemeData currentTheme() {
  return ThemeData(
    accentColor: Color(0xffbd4089),
    backgroundColor: Color(0xffc2c1c2),
    buttonColor: Color(0xffff0f80),
    textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        button: TextStyle()),
  );
}
