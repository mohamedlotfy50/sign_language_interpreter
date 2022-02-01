import 'package:flutter/material.dart';
import 'package:sign_language_interpreter/presentation/auth/screens/forget_password.dart';
import 'package:sign_language_interpreter/presentation/auth/screens/otp_screen.dart';
import 'package:sign_language_interpreter/presentation/auth/screens/sign_in_screen.dart';
import 'package:sign_language_interpreter/presentation/auth/screens/sign_up_screen.dart';
import 'package:sign_language_interpreter/presentation/onboard_screen/screens/board_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF448CF2),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Color(0xFF448CF2),
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ),
        colorScheme: ColorScheme.light(onSecondary: Color(0xFF448CF2)),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color: Color(0xFF448CF2), width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.lightBlue, width: 2),
          ),
        ),
      ),
      home: SignUpScreen(),
    );
  }
}
