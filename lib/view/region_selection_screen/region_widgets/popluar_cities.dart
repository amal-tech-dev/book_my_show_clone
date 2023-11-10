import 'package:book_my_show_clone/utils/constants/color_constant.dart';
import 'package:book_my_show_clone/utils/database/database.dart';
import 'package:flutter/material.dart';

class PopularCities extends StatelessWidget {
  PopularCities({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          color: ColorConstant.tertiaryColor,
          child: Text('Popular Cities'),
        ),
        Container(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemBuilder: (context, index) => Container(
              color: ColorConstant.bgColor,
            ),
            itemCount: 12,
          ),
        )
      ],
    );
  }
}
