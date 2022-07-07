import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../../application/auth/auth_provider.dart';
import 'account_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../asset_locations.dart';
import '../widgets/image_provider.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppLocalizations locale = AppLocalizations.of(context)!;

    final ThemeData theme = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    final AuthProvider provider =
        Provider.of<AuthProvider>(context, listen: true);
    return Container(
      color: theme.appBarTheme.backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: size.height / 3,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width / 3.2,
                  height: size.width / 3.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: getImage(
                          url: provider.user!.imagePath,
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(provider.user!.username,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            ),
          ),
          Container(
            height: size.height / 2,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: ListView(
              itemExtent: size.height / 10,
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              children: [
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChangeNotifierProvider.value(
                            value: provider,
                            builder: (context, c) => AccountScreen(),
                          ),
                        ));
                  },
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child:
                          SvgPicture.asset(AssetLocations.account, width: 40)),
                  title: Text(
                    locale.account,
                    style: TextStyle(color: Color(0xFF92B1DF), fontSize: 18),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child:
                          SvgPicture.asset(AssetLocations.setting, width: 40)),
                  title: Text(
                    locale.setting,
                    style: TextStyle(color: Color(0xFF92B1DF), fontSize: 18),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: SvgPicture.asset(AssetLocations.share, width: 40)),
                  title: Text(
                    locale.share,
                    style: TextStyle(color: Color(0xFF92B1DF), fontSize: 18),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: SvgPicture.asset(AssetLocations.rate, width: 40)),
                  title: Text(
                    locale.rateUs,
                    style: TextStyle(color: Color(0xFF92B1DF), fontSize: 18),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
