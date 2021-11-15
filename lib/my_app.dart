import 'package:flutter/material.dart';
import 'package:sign_language_interpreter/presentation/boardScreen/screens/board_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BoardScreen(),
    );
  }
}
