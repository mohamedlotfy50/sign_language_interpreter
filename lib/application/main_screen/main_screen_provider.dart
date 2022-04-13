import 'package:flutter/material.dart';
import 'package:sign_language_interpreter/asset_locations.dart';
import 'package:sign_language_interpreter/domain/learning/document_model.dart';
import '../../domain/auth/model.dart';
import '../../presentation/home/drawer_item.dart';
import '../../presentation/home/screens/setting.dart';
import '../../presentation/home/screens/main_screen.dart';

class MainScreenProvider extends ChangeNotifier {
  MainScreenProvider();
  int currentIndex = 0;
  // final UserModel user;
  // MainScreenProvider(this.user);
  final List<DocumentModel> docs = [
    DocumentModel(
        arTitle: 'arabic sign language pt1',
        enTitle: 'arabic sign language pt1',
        location: AssetLocations.book1),
    DocumentModel(
        arTitle: 'arabic sign language pt2',
        enTitle: 'arabic sign language pt2',
        location: AssetLocations.book2),
  ];
  final List<DrawerItem> drawerTitle = [
    DrawerItem(title: 'Home', route: '/home ', page: MainScreen()),
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

  Future<bool> onWillPop() async {
    if (currentIndex != 0) {
      currentIndex = 0;
      notifyListeners();
      return false;
    } else {
      return true;
    }
  }

  Widget get CurrentPageWidget => drawerTitle[currentIndex].page;
}
