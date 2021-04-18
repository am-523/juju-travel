import 'package:flutter/material.dart';
import 'package:juju_travel_apps/theme.dart';

import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Make every moment \nof yours the best",
                      style: boldTextStyle.copyWith(fontSize: 30),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Keep the world adventures forever away\nto explorer our beautiful planet",
                      style: boldTextStyle.copyWith(fontSize: 14),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 230),
                    child: Container(
                      width: 132,
                      height: 41,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xffAB90F8),
                            Color(0xff774FE2),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(
                          30.0,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffA68CEE),
                            blurRadius: 11,
                            offset: Offset(6, 7), // Shadow position
                          ),
                        ],
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                              (route) => false);
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Text(
                          'Get Started',
                          style: whiteTextStyle.copyWith(fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/splash.png',
                    width: MediaQuery.of(context).size.width,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
