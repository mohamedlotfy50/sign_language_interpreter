import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sign_language_interpreter/application/auth/auth_provider.dart';
import 'package:sign_language_interpreter/application/main_screen/main_screen_provider.dart';
import 'package:sign_language_interpreter/presentation/home/widgets/items_home.dart';
import 'package:sign_language_interpreter/presentation/learning/screens/books_list_screen.dart';

import '../../../asset_locations.dart';
import '../../interpreter/screens/avatar_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthProvider provider = Provider.of<AuthProvider>(context);
    final MainScreenProvider mainScreenProvider =
        Provider.of<MainScreenProvider>(context);

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Column(
        children: [
          DetailItems(
            title: 'Chat',
            imgPath: AssetLocations.chat,
          ),
          DetailItems(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AvatarScreen(),
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
                    builder: (context) => BooksListScreen(
                      documents: mainScreenProvider.docs,
                    ),
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
