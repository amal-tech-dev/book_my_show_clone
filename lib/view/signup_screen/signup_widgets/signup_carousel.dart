import 'package:book_my_show_clone/utils/database/database.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SignUpCarousel extends StatelessWidget {
  const SignUpCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: 3,
      itemBuilder: (context, index, realIndex) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            DataBase.signupCarousel[index]['image_url'],
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25.0,
            ),
            child: Text(
              DataBase.signupCarousel[index]['description'],
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1,
      ),
    );
  }
}
