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
                    Container(
                      margin: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                        child: Text('take tests'),
                      ),
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                    Expanded(
                      child: TextButton(
                        child: Container(
                          // decoration: BoxDecoration(boxShadow: [
                          //   BoxShadow(
                          //       color: Theme.of(context).accentColor,
                          //       blurRadius: 30,
                          //       spreadRadius: 2)
                          // ]),
                          child: CircleAvatar(
                            radius: MediaQuery.of(context).size.height / 20 - 2,
                            backgroundColor: Theme.of(context).buttonColor,
                            child: Text(
                              'Profile',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          // PageRouteBuilder(pageBuilder: (co){})

                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => HomeProfile()));

                          Navigator.push(
                              context, FadeRoute(page: HomeProfile()));
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Theme.of(context).accentColor,
                              blurRadius: 30,
                              spreadRadius: 2),
                        ],
                        color: Theme.of(context).backgroundColor,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Trophies',
                        ),
                      ),
                      width: MediaQuery.of(context).size.width / 3,
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
