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
      home: BoardScreen(),
      routes: <String, WidgetBuilder>{
        '/home': (context) => BoardScreen(),
        '/otp': (context) => OTPScreen(),
        '/signup': (context) => SignUpScreen(),
      },
    );
  }
}
