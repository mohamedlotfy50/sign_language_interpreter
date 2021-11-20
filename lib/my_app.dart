import 'package:flutter/material.dart';
import 'package:sign_language_interpreter/presentation/auth/screens/sign_in_screen.dart';
import 'presentation/onboard_screen/screens/board_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}
