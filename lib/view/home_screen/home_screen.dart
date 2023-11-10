import 'package:book_my_show_clone/utils/constants/color_constant.dart';
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
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Column(
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
