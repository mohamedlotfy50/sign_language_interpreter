import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../../application/auth/auth_provider.dart';
import 'image_provider.dart';
import '../../../application/main_screen/main_screen_provider.dart';
import '../../auth/screens/sign_in_screen.dart';
import 'drawer_item.dart';

import '../../../asset_locations.dart';

class MyDrawer extends StatelessWidget {
  // final String Title;

  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final AuthProvider provider =
        Provider.of<AuthProvider>(context, listen: true);
    return Drawer(
      backgroundColor: const Color(0xFF0ea6cc),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 60),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Center(
                      child: SvgPicture.asset(
                        AssetLocations.imgbg,
                        width: size.width / 1.5,
                      ),
                    ),
                    CircleAvatar(
                      radius: size.width / 5,
                      backgroundImage: getImage(url: provider.user!.imagePath),
                    ),
                  ],
                ),
                // ),
              ),
              Text(
                provider.user!.username,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                provider.user!.email,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          // const SizedBox(height: 44,),
          Container(
            child: DrawerItemTile(),
          ),

          ElevatedButton(
            child: const Text('Sign Out',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0ea6cc))),
            onPressed: () async {
              provider.logout();
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 22),
            ),
          ),
        ],
      ),
    );
  }
}
