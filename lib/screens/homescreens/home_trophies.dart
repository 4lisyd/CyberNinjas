import 'package:cyber_ninjas/components/pageRouteBuilder.dart';
import 'package:cyber_ninjas/screens/homescreens/home_profile.dart';
import 'package:flutter/material.dart';

class HomeTrophies extends StatefulWidget {
  @override
  _HomeTrophiesState createState() => _HomeTrophiesState();
}

class _HomeTrophiesState extends State<HomeTrophies> {
  @override
  Widget build(BuildContext context) {
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
                  Icons.card_giftcard,
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
                  'Trophies',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
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
          ],
        ),
      ),
    );
  }
}
