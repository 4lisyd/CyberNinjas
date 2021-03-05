import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget button1() {
  return TextButton(
      onPressed: () {},
      child: TextButton(
        child: Container(
          child: Center(
            child: Text("continue"),
          ),
          height: 60,
          width: 60,
          color: Colors.amberAccent,
        ),
        onPressed: () {},
      ));
}
