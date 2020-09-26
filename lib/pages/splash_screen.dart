import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tafadom/config/palette.dart';
import 'package:tafadom/pages/home2_page.dart';
import 'package:tafadom/router/router.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => {
        PageRouter.pushPage(HomePage(), context),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: 120.0, 
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 60.0,
              child: Column(
                children: [
                  Container(
                    width: 23.0,
                    height: 23.0,
                    child: CircularProgressIndicator(
                      backgroundColor: Palette.primaryColor,
                      valueColor: new AlwaysStoppedAnimation<Color>(
                        Palette.secondaryColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    "From innov237",
                    style: TextStyle(
                      color: Palette.primaryColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
