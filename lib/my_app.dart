import 'package:flutter/material.dart';

import 'package:sign_language_interpreter/presentation/auth/screens/sign_in_screen.dart';
import 'package:sign_language_interpreter/presentation/auth/screens/sign_up_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color: Colors.blueAccent, width: 2),
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
