import 'package:flutter/material.dart';

ThemeData currentTheme() {
  return ThemeData(
    accentColor: Color(0xffbd4089),
    backgroundColor: Color(0xffc2c1c2),
    buttonColor: Color(0xffff0f80),
    primaryColorDark: Color(0xff42213d),
    primaryColor: Color(0xffbd4089),
    canvasColor: Color(0xff683257),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w800,
        // color: Colors.black,
        color: Color(0xff683257),
      ),
      button: TextStyle(
        fontSize: 14,
        color: Color(0xff42213d),
      ),
    ),
  );
}
