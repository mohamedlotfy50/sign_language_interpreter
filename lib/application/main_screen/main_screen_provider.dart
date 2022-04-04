import 'package:flutter/material.dart';
import 'package:sign_language_interpreter/domain/auth/model.dart';
import 'package:sign_language_interpreter/presentation/home/drawer_item.dart';
import 'package:sign_language_interpreter/presentation/home/screens/setting.dart';
import 'package:sign_language_interpreter/presentation/home/widgets/main_subscreen.dart';

class MainScreenProvider extends ChangeNotifier{
  final UserModel user;
MainScreenProvider(this.user);
  int currentIndex =0;
  // final UserModel user;
  // MainScreenProvider(this.user);
  final List<DrawerItem> drawerTitle = [
    DrawerItem(title: 'Home', route: '/home ',page: MainSubScreen()),
    // DrawerItem(title: 'Work Preference', route: '/home',page: MainSubScreen()),
    // DrawerItem(title: 'Go Pro', route: '/home',page: MainSubScreen()),
    // DrawerItem(title: 'My Channels', route: '/home',page: MainSubScreen()),
    DrawerItem(title: 'Account Settings', route: '/setting',page: SettingScreen()),
  ];

  void changeCurrentIndex (int index){
    currentIndex=index;
    notifyListeners();
  }
  Widget get CurrentPageWidget=>drawerTitle[currentIndex].page;
}