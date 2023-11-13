import 'package:book_my_show_clone/utils/constants/color_constant.dart';
import 'package:book_my_show_clone/utils/database/database.dart';
import 'package:book_my_show_clone/view/bottom_navigation_screen/bottom_navigation_screen.dart';
import 'package:flutter/material.dart';

class PopularCities extends StatelessWidget {
  PopularCities({super.key});
  List popularCities = DataBase.popularCities;
  int temp = DataBase.popularCities.length % 4;

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
                  'Popular Cities',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (context, index) => InkWell(
                  onTap: () => {
                    if (index < popularCities.length)
                      {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BottomNavigationScreen(),
                          ),
                        ),
                      }
                  },
                  child: Container(
                    color: ColorConstant.bgColor,
                    child: (index < popularCities.length)
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                popularCities[index]['image_url'],
                                height: 50,
                                width: 50,
                              ),
                              Text(
                                popularCities[index]['city'],
                                style: TextStyle(
                                  color: ColorConstant.secondaryTextColor,
                                ),
                              ),
                            ],
                          )
                        : Container(),
                  ),
                ),
                itemCount: popularCities.length + (temp == 0 ? 0 : (4 - temp)),
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
