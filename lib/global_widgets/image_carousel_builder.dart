import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarouselBuilder extends StatelessWidget {
  ImageCarouselBuilder({
    super.key,
    required this.itemList,
  });
  final List itemList;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: itemList.length,
      itemBuilder: (context, index, realIndex) => Image.asset(
        itemList[index],
      ),
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1,
        aspectRatio: 20 / 9,
      ),
    );
  }
}
