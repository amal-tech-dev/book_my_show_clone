import 'package:book_my_show_clone/global_widgets/image_carousel_builder.dart';
import 'package:book_my_show_clone/global_widgets/movie_tile_builder.dart';
import 'package:book_my_show_clone/utils/constants/color_constant.dart';
import 'package:book_my_show_clone/utils/database/database.dart';
import 'package:book_my_show_clone/view/home_screen/home_widgets/categories_builder.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColor,
      appBar: AppBar(
        backgroundColor: ColorConstant.appBarColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'It All Starts Here',
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Palakkad',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                ),
              ],
            ),
          ],
        ),
        actions: [
          SizedBox(
            height: 40,
            width: 50,
            child: Icon(
              Icons.search,
            ),
          ),
          SizedBox(
            height: 40,
            width: 50,
            child: Icon(
              Icons.notifications_outlined,
            ),
          ),
          SizedBox(
            height: 40,
            width: 50,
            child: Icon(
              Icons.qr_code_scanner,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          CategoriesBuilder(),
          ImageCarouselBuilder(
            itemList: DataBase.movieCarousel,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              'assets/images/ad.jpg',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          MovieTileBuilder(
            title: 'Recomended Movies',
            length: 10,
          ),
        ],
      ),
    );
  }
}
