import 'package:flutter/material.dart';

class MovieTileBuilder extends StatelessWidget {
  MovieTileBuilder({
    super.key,
    required this.title,
    required this.length,
  });
  String title;
  int length;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Row(
          children: List.generate(
            length,
            (index) => Container(
              height: 20,
              width: 10,
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }
}
