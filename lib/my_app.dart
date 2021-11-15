import 'package:sign_language_interpreter/boardScreen/screens/board_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: BoardScreen(),
    );
  }
}
