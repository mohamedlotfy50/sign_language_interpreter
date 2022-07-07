import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../application/auth/auth_provider.dart';
import '../../../application/main_screen/main_screen_provider.dart';
import '../../documents/screens/books_list_screen.dart';
import '../widgets/items_home.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../asset_locations.dart';
import '../../interpreter/screens/interpreter_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppLocalizations locale = AppLocalizations.of(context)!;

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Column(
        children: [
          DetailItems(
            title: locale.chat,
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
            title: locale.translateSignLanguage,
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
            title: locale.learnSignLanguage,
            imgPath: AssetLocations.learn1,
          ),
        ],
      ),
    );
  }
}
