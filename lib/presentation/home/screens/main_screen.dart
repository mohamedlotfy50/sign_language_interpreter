import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../application/auth/auth_provider.dart';
import '../../../application/main_screen/main_screen_provider.dart';
import '../../documents/screens/books_list_screen.dart';
import '../widgets/items_home.dart';

import '../../../asset_locations.dart';
import '../../interpreter/screens/interpreter_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Column(
        children: [
          const DetailItems(
            title: 'Chat',
            imgPath: AssetLocations.chat,
          ),
          DetailItems(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InterpreterScreen(),
                  ));
            },
            title: 'Translate Sign Language',
            imgPath: AssetLocations.translate,
          ),
          DetailItems(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BooksListScreen(),
                  ));
            },
            title: 'Learn Sign Language',
            imgPath: AssetLocations.learn1,
          ),
        ],
      ),
    );
  }
}
