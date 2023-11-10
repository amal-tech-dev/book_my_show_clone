import 'package:book_my_show_clone/view/main_screen/main_screen.dart';
import 'package:book_my_show_clone/view/region_selection_screen/region_selection_screen.dart';
import 'package:book_my_show_clone/view/signup_screen/signup_screen.dart';
import 'package:book_my_show_clone/view/splash_screen/splash_screen_1.dart';
import 'package:book_my_show_clone/view/splash_screen/splash_screen_2.dart';
import 'package:flutter/material.dart';

void main() => runApp(BookMyShow());

class BookMyShow extends StatelessWidget {
  BookMyShow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
    );
  }
}
