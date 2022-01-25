import 'package:flutter/material.dart';

class HaveAccount extends StatelessWidget {
  final bool login;
  final Color textColor1,textColor2;

  const HaveAccount({
    Key? key,
    required this.textColor1,
    required this.textColor2,
    this.login=true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login? "Don't have An Account ? ":"Already have an Account ? ",
          style: TextStyle(color: textColor1,letterSpacing: 0.8,),
        ),
        GestureDetector(
          onTap: (){},
          child: Text(
            login? "Sign Up" : "Sign In",
            style: TextStyle(
              color: textColor2,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.8,
            ),
          ),
        )
      ],
    );
  }
}
