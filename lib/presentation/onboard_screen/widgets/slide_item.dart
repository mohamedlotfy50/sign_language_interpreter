import 'package:flutter/material.dart';

class SlideItem extends StatelessWidget {
  final String imagePath, title, text;
  SlideItem({
    required this.imagePath,
    required this.title,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 250,
          ),
          Text(
            title,
            style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Color(0xFF4663AA)),
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 17,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
