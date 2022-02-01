import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String text,page;
  // final Function press;
  final Color color, textColor;

  const RoundButton({
    Key? key,
    required this.text,
    // required this.press,
    required this.color,
    required this.textColor, required this.page,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:30, bottom:25),
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.3,
      child: ElevatedButton(
        onPressed: () => {
        Navigator.pushNamed(context,page),
        },
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
            letterSpacing: 1.5,
          ),
        ),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          primary: textColor,
          backgroundColor: color,
        ),
      ),
    );
  }
}
