import 'package:book_my_show_clone/utils/constants/color_constant.dart';
import 'package:book_my_show_clone/view/region_selection_screen/region_widgets/other_cities.dart';
import 'package:book_my_show_clone/view/region_selection_screen/region_widgets/popluar_cities.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegionSelectionScreen extends StatelessWidget {
  RegionSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.bgColor,
        appBar: AppBar(
          backgroundColor: ColorConstant.appBarColor,
          leading: BackButton(
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Kindly select your city to proceed',
                ),
              ),
            ),
          ),
          title: Text(
            'Pick a Region',
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 70,
              color: Colors.grey,
              padding: EdgeInsets.all(6),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorConstant.bgColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search for your city',
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    height: 70,
                    color: ColorConstant.bgColor,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.location_searching_rounded,
                          color: ColorConstant.primaryColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Auto Detect My Location',
                          style: TextStyle(
                            color: ColorConstant.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  PopularCities(),
                  OtherCities(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
