import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../application/auth/auth_provider.dart';
import '../../../application/main_screen/main_screen_provider.dart';
import '../../../asset_locations.dart';
import '../widgets/my_drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainScreenWrapper extends StatelessWidget {
  MainScreenWrapper({
    Key? key,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final AppLocalizations locale = AppLocalizations.of(context)!;

    final AuthProvider provider =
        Provider.of<AuthProvider>(context, listen: true);
    return ChangeNotifierProvider(
      create: (_) => MainScreenProvider(),
      builder: (context, _) => WillPopScope(
          onWillPop: context.read<MainScreenProvider>().onWillPop,
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              leading: IconButton(
                icon: SvgPicture.asset(
                  AssetLocations.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  scaffoldKey.currentState?.openDrawer();
                },
              ),
              title: const Text('SLI'),
            ),
            body: context.watch<MainScreenProvider>().CurrentPageWidget,
            key: scaffoldKey,
            drawer: const MyDrawer(),
          )),
    );
  }
}
