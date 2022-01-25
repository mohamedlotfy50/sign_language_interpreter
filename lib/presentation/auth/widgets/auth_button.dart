import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String text;
  // final Function press;
  final Color color, textColor;
  const RoundButton({
    Key? key,
    required this.text,
    // required this.press,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:30, bottom:25),
      // margin: EdgeInsets.symmetric(vertical: 40),
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: TextButton(
          onPressed: () => {},
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              letterSpacing: 1.5,
            ),
          ),
          style: TextButton.styleFrom(
            primary: textColor,
            backgroundColor: color,
          ),
        ),
      ),
    );
  }
}
