import 'package:book_my_show_clone/utils/constants/color_constant.dart';
import 'package:book_my_show_clone/utils/database/database.dart';
import 'package:book_my_show_clone/view/main_screen/main_screen.dart';
import 'package:book_my_show_clone/view/region_selection_screen/region_selection_screen.dart';
import 'package:book_my_show_clone/view/signup_screen/signup_widgets/signup_carousel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegionSelectionScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'SKIP',
                          style: TextStyle(
                            color: ColorConstant.secondaryTextColor,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: SignUpCarousel(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: ColorConstant.secondaryColor,
                        width: 0.8,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 60,
                          child: Icon(
                            Icons.location_searching_rounded,
                          ),
                        ),
                        Text(
                          'Continue with Google',
                          style: TextStyle(
                            color: ColorConstant.secondaryTextColor,
                            fontSize: 17.5,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: ColorConstant.secondaryColor,
                        width: 0.8,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 60,
                          child: Icon(
                            Icons.mail_outline,
                          ),
                        ),
                        Text(
                          'Continue with Email',
                          style: TextStyle(
                            color: ColorConstant.secondaryTextColor,
                            fontSize: 17.5,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'OR',
                    style: TextStyle(
                      color: ColorConstant.secondaryTextColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.flag,
                      ),
                      Text('+91'),
                      Container(
                        height: 30,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                            'Continue with mobile number',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'I agree to the ',
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Terms & Conditions',
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: ColorConstant.secondaryColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      ' and ',
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Privacy Policy',
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: ColorConstant.secondaryColor,
                        ),
                      ),
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
