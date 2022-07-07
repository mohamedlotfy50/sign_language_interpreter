import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import '../../../application/account_setting/account_setting_provider.dart';
import '../../../application/auth/auth_provider.dart';
import '../../../domain/auth/validation.dart';
import '../../../infrastructure/core/app_state.dart';
import '../widgets/account_edit_tile.dart';
import '../../../asset_locations.dart';
import '../../../domain/auth/user_model.dart';
import 'package:path/path.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widgets/image_provider.dart';

class AccountScreen extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppLocalizations locale = AppLocalizations.of(context)!;

    final ThemeData theme = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    final AuthProvider provider =
        Provider.of<AuthProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text(locale.account),
        elevation: 0,
      ),
      body: ChangeNotifierProvider(
        create: (context) => AccountSettingProvider(provider.user!),
        builder: (context, _) {
          final AccountSettingProvider watch =
              context.watch<AccountSettingProvider>();
          final AccountSettingProvider read =
              context.read<AccountSettingProvider>();
          return SingleChildScrollView(
            child: Container(
              color: theme.appBarTheme.backgroundColor,
              height: size.height - 60,
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
                        Stack(
                          children: [
                            Container(
                              width: size.width / 3.2,
                              height: size.width / 3.2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: DecorationImage(
                                    image: getImage(
                                        imagePath: watch.image,
                                        url: provider.user!.imagePath),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: GestureDetector(
                                onTap: read.pickAnImage,
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                    color: theme.appBarTheme.backgroundColor,
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(provider.user!.username)
                      ],
                    ),
                  ),
                  Form(
                    key: formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 18, vertical: 18),
                      height: size.height / 1.9,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          AccountEditTile(
                              validator: (val) {
                                final bool isValid = Validator.isValidName(val);
                                return isValid ? null : 'Invalid User Name';
                              },
                              changeEditability: read.toggleUseNameEditing,
                              onChanged: read.setUserName,
                              svgIcon: AssetLocations.account,
                              value: provider.user!.username,
                              lable: locale.userName,
                              isEditable: watch.useNameEditing),
                          AccountEditTile(
                              validator: (val) {
                                final bool isValid =
                                    Validator.isValidEmail(val);

                                return isValid ? null : 'Invalid Email';
                              },
                              changeEditability: read.toggleUseEmailEditing,
                              onChanged: read.setEmail,
                              svgIcon: AssetLocations.editname,
                              value: provider.user!.email,
                              lable: locale.email,
                              isEditable: watch.useEmailEditing),
                          AccountEditTile(
                              validator: (val) {
                                final bool isValid =
                                    Validator.isValidPhone(val);
                                if (val!.isEmpty) {
                                  return null;
                                }

                                return isValid ? null : 'Invalid Phone Number';
                              },
                              changeEditability: read.toggleUsePhoneEditing,
                              onChanged: read.setPhone,
                              svgIcon: AssetLocations.phone,
                              value: provider.user!.phone,
                              lable: locale.phone,
                              isEditable: watch.usePhoneEditing),
                          watch.state == AppState.loading
                              ? const CircularProgressIndicator()
                              : SizedBox(
                                  width: size.width / 2,
                                  height: 45,
                                  child: ElevatedButton(
                                      onPressed: () async {
                                        if (formKey.currentState!.validate()) {
                                          await read.upDateUserData().then((_) {
                                            if (watch.state ==
                                                AppState.loaded) {
                                              provider.upDateUserData(
                                                  read.userModel);
                                            }
                                          });
                                        }
                                      },
                                      child: Text(locale.submit)))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
