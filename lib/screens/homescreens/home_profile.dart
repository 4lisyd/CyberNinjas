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
              bottom: 10,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).backgroundColor,
                      spreadRadius: 5,
                      offset: Offset(0, 20),
                      blurRadius: 30,
                    )
                  ],
                ),
                height: MediaQuery.of(context).size.height / 10,
                width: MediaQuery.of(context).size.width - 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: Theme.of(context).backgroundColor,
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Center(
                          child: Text(
                            'take tests',
                            style: Theme.of(context).textTheme.button,
                          ),
                        ),
                        width: MediaQuery.of(context).size.width / 3,
                      ),
                      onPressed: () {
                        print('tests');
                        Navigator.of(context).push(FadeRoute(page: HomeTest()));
                      },
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Theme.of(context).accentColor,
                              blurRadius: 30,
                              spreadRadius: 2)
                        ]),
                        child: CircleAvatar(
                          radius: MediaQuery.of(context).size.height / 20 - 2,
                          backgroundColor: Theme.of(context).buttonColor,
                          child: Text(
                            'profile',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: Theme.of(context).backgroundColor,
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Center(
                          child: Text(
                            'Trophies',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        width: MediaQuery.of(context).size.width / 3,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context, FadeRoute(page: HomeTrophies()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
