import 'package:book_my_show_clone/utils/constants/color_constant.dart';
import 'package:book_my_show_clone/view/events_screen/events_screen.dart';
import 'package:book_my_show_clone/view/home_screen/home_screen.dart';
import 'package:book_my_show_clone/view/movies_screen/movies_screen.dart';
import 'package:book_my_show_clone/view/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int bottomIndex = 0;
  List<Widget> pages = [];

  @override
  void initState() {
    pages = [
      HomeScreen(),
      MoviesScreen(),
      EventsScreen(),
      ProfileScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[bottomIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomIndex,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: ColorConstant.primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: (value) => setState(
          () => bottomIndex = value,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_outlined,
              color: Colors.grey,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_outlined,
              color: Colors.grey,
            ),
            label: 'Movies',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_outlined,
              color: Colors.grey,
            ),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_outlined,
              color: Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
