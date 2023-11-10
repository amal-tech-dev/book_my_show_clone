import 'package:book_my_show_clone/utils/constants/color_constant.dart';
import 'package:book_my_show_clone/utils/database/database.dart';
import 'package:book_my_show_clone/view/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:flutter/material.dart';

class OtherCities extends StatelessWidget {
  OtherCities({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: ColorConstant.tertiaryColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Other Cities',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Column(
                children: List.generate(
                  DataBase.otherCities.length,
                  (index) => InkWell(
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavigationScreen(),
                      ),
                    ),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      color: ColorConstant.bgColor,
                      padding: EdgeInsets.all(15),
                      child: Text(
                        DataBase.otherCities[index],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
