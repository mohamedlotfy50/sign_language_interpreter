import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../../application/main_screen/main_screen_provider.dart';
import '../../../domain/auth/model.dart';
import 'drawer.dart';
import '../../../asset_locations.dart';

class HomeScreen extends StatefulWidget {
  final UserModel user;

  HomeScreen({Key? key, required this.user}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)?.settings.arguments;
    return ChangeNotifierProvider(
      // create: (_)=>MainScreenProvider(user),
      create: (_) => MainScreenProvider(widget.user),
      builder: (context, _) => Scaffold(
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
          title: const Text('App Name'),
        ),
        // body: ListView.separated(
        //   itemCount: homePages.length,
        //   separatorBuilder: (BuildContext context, int index) => const Divider(),
        //     itemBuilder: (ctx, i) => homePages[i],
        // ),
        body: context.watch<MainScreenProvider>().CurrentPageWidget,
        key: scaffoldKey,
        drawer: const MyDrawer(),
      ),
    );
  }
}
