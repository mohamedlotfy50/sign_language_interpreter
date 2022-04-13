import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sign_language_interpreter/application/auth/auth_provider.dart';
import 'package:sign_language_interpreter/presentation/avatar/screens/avatar_screen.dart';
import 'package:sign_language_interpreter/presentation/home/widgets/items_home.dart';

import '../../../asset_locations.dart';

class MainSubScreen extends StatelessWidget {
  const MainSubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthProvider provider = Provider.of<AuthProvider>(context);

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
            title: 'Learn Sign Language',
            imgPath: AssetLocations.learn1,
          ),
        ],
      ),
    );
  }
}
