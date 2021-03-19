import 'package:cyber_ninjas/components/pageRouteBuilder.dart';
import 'package:cyber_ninjas/screens/homescreens/home_tests.dart';
import 'package:cyber_ninjas/screens/homescreens/home_trophies.dart';
import 'package:flutter/material.dart';

class HomeProfile extends StatefulWidget {
  @override
  _HomeProfileState createState() => _HomeProfileState();
}

class _HomeProfileState extends State<HomeProfile> {
  @override
  Widget build(BuildContext context) {
    // int currentScreenTemp;   /

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.all(20),
                child: Icon(
                  Icons.settings,
                  size: 40,
                  color: Theme.of(context).canvasColor,
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  'Profile',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.3), BlendMode.srcOver),
                  child: Image.asset(
                    "lib/assets/screenComponents/birdsTriangleCorner.jpg",
                    colorBlendMode: BlendMode.dstATop,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 100,
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                  "https://www.nicepng.com/png/detail/136-1366211_group-of-10-guys-login-user-icon-png.png",
                  // scale: 10,
                ),
              ),
            ),
            // Positioned(
            //   child: Column(),
            // ),
          ],
        ),
      ),
    );
  }
}
