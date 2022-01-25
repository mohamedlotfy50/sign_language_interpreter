import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  final String text1;
  final Color color1;
  final IconData icon1;
  const SignIn({Key? key,
    required this.text1,
    required this.color1,
    required this.icon1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.7,
      child: TextButton.icon(
        onPressed: (){},
        style: TextButton.styleFrom(
          backgroundColor: color1,
          shape:RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        icon: Icon(
          icon1,
          size: 35,
          color: Colors.white,
        ),
        label: Text(text1,
          style: TextStyle(
            color:Colors.white,
              fontSize: 20,
          ),
        ),
      ),
    );
  }
}