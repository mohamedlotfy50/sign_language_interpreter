import 'package:flutter/material.dart';
import 'package:sign_language_interpreter/presentation/home/widgets/items_home.dart';

import '../../../asset_locations.dart';

class MainSubScreen extends StatelessWidget {
  final List<DetailItems> homePages = [
    DetailItems(
      imgPath: AssetLocations.chat,
      title: 'Chat',),
    DetailItems(
      imgPath: AssetLocations.translate,
      title: 'Translate',),
    DetailItems(
      imgPath: AssetLocations.learn1,
      title: 'Learn Sign Language',),
  ];
   MainSubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DetailItems(title: 'Chat',imgPath: AssetLocations.chat,),
          DetailItems(title: 'Translate Sign Language',imgPath: AssetLocations.translate,),
          DetailItems(title: 'Learn Sign Language',imgPath: AssetLocations.learn1,),

        ],),
    );
  }
}
