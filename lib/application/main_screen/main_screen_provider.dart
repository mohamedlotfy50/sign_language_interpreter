import 'package:flutter/material.dart';
import '../../domain/auth/model.dart';
import '../../presentation/home/drawer_item.dart';
import '../../presentation/home/screens/setting.dart';
import '../../presentation/home/screens/home_screen.dart';

class MainScreenProvider extends ChangeNotifier {
  MainScreenProvider();
  int currentIndex = 0;
  // final UserModel user;
  // MainScreenProvider(this.user);
  final List<DrawerItem> drawerTitle = [
    DrawerItem(title: 'Home', route: '/home ', page: MainSubScreen()),
    // DrawerItem(title: 'Work Preference', route: '/home',page: MainSubScreen()),
    // DrawerItem(title: 'Go Pro', route: '/home',page: MainSubScreen()),
    // DrawerItem(title: 'My Channels', route: '/home',page: MainSubScreen()),
    DrawerItem(
        title: 'Account Settings', route: '/setting', page: SettingScreen()),
  ];

  void changeCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  Widget get CurrentPageWidget => drawerTitle[currentIndex].page;
}
