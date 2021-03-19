import 'package:cyber_ninjas/screens/homescreens/home_profile.dart';
import 'package:cyber_ninjas/screens/homescreens/home_tests.dart';
import 'package:cyber_ninjas/screens/homescreens/home_trophies.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedWindow = 1;
  PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedWindow,
        type: BottomNavigationBarType.shifting,
        onTap: (value) {
          setState(() {
            selectedWindow = value;
          });

          pageController.jumpToPage(selectedWindow);
          //   pageController.animateToPage(
          //     value,
          //     duration: Duration(microseconds: 100),
          //   );

          // print(value);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: 'Trophies'),
          BottomNavigationBarItem(icon: Icon(Icons.face), label: 'profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_open_sharp), label: 'Quiz'),
        ],
      ),
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: PageView(
          controller: pageController,
          onPageChanged: (value) {
            setState(() {
              selectedWindow = value;
            });
          },
          children: [
            HomeTrophies(),
            HomeProfile(),
            HomeTest(),
          ],
        ),
      ),
    );
  }
}
