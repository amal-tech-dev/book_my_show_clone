import 'dart:async';

import 'package:book_my_show_clone/utils/constants/color_constant.dart';
import 'package:book_my_show_clone/utils/constants/image_constant.dart';
import 'package:book_my_show_clone/view/splash_screen/splash_screen_2.dart';
import 'package:flutter/material.dart';

class SplashScreen1 extends StatefulWidget {
  SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  void initState() {
    Timer(
      Duration(
        seconds: 1,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SplashScreen2(),
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
        child: Image.asset(
          ImageConstant.appLogoMini,
          height: 200,
        ),
      ),
    );
  }
}
