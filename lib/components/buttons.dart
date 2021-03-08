import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  Function onPress;
  String title;

  Button1(this.title, this.onPress);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPress,
        child: TextButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(26),
          ),
          // style: ,
          child: Container(
            child: Center(
              child: Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
            ),
            height: 50,
            width: 150,
            color: Theme.of(context).buttonColor,
          ),
          onPressed: onPress,
        ));
  }
}
