import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Slide{
  final String imageUrl;
  final String title;
  final String description;
  Slide({
    required this.imageUrl,
    required this.title,
    required this.description,
});
}

final slideList = [
  Slide(
      imageUrl: 'assets/images/Layer 2.png',
      title: 'Translate',
      description: 'Lorem ipsum dolor sit amet, t labore et dolore magna. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip',
  ),
  Slide(
    imageUrl: 'assets/images/Group 6.png',
    title: 'Learn',
    description: 'Lorem ipsum dolor sit amet, t labore et dolore magna. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip',
  ),
  Slide(
    imageUrl: 'assets/images/teaching_outline II.png',
    title: 'Communiacte',
    description: 'Lorem ipsum dolor sit amet, t labore et dolore magna. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip',
  ),
];

