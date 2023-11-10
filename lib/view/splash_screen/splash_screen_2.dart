import 'dart:async';

import 'package:book_my_show_clone/utils/constants/color_constant.dart';
import 'package:book_my_show_clone/utils/constants/image_constant.dart';
import 'package:book_my_show_clone/view/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:book_my_show_clone/view/signup_screen/signup_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen2 extends StatefulWidget {
  SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    Timer(
      Duration(
        seconds: 2,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SignUpScreen(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
            ),
            Image.asset(
              ImageConstant.appLogoMain,
              height: 80,
            ),
            Text(
              'It All Starts Here',
              style: TextStyle(
                color: ColorConstant.primaryTextColor,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 400,
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 5,
                  strokeCap: StrokeCap.round,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
