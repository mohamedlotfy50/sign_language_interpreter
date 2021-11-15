import 'package:flutter/material.dart';
import 'package:sign_language_interpreter/model/slide.dart';


class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/Layer 2.png'),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          'Translate',
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.5,
              color: Colors.indigo),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Lorem ipsum dolor sit amet, t labore et dolore magna. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.indigo,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 5),
              height: 10,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 5),
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(5),
              ),
            ),Container(
              margin: EdgeInsets.only(right: 5),
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ],
        ),
      ],
    ),
    ],
    );
  }
}
