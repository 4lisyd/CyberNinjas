import 'package:cyber_ninjas/screens/welcome/welcome1.dart';
import 'package:cyber_ninjas/screens/welcome/welcome2.dart';
import 'package:cyber_ninjas/screens/welcome/welcome3.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    // pageViewController.
    return SafeArea(
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: PageView(
          controller: pageViewController,
          children: [
            Welcome1(),
            Welcome2(),
            Welcome3(),
          ],
        ),
      ),
    );
  }
}
