import 'package:cyber_ninjas/components/buttons.dart';
import 'package:cyber_ninjas/screens/homescreens/home.dart';
import 'package:cyber_ninjas/screens/homescreens/home_profile.dart';
import 'package:flutter/material.dart';

class Welcome3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            child: Center(
              child: Text('welcome 3'),
            ),
          ),
          Button1('conti0nue', () {
            print('continued...');
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          }),
        ],
      ),
    );
  }
}
