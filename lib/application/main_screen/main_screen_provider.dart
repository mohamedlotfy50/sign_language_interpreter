import 'package:flutter/material.dart';
import '../../asset_locations.dart';
import '../../domain/auth/user_model.dart';
import '../../presentation/home/screens/setting_screen.dart';
import '../../presentation/home/screens/main_screen.dart';

class MainScreenProvider extends ChangeNotifier {
  MainScreenProvider();
  int currentIndex = 0;

  final List<String> drawerTitle = ['Home', 'Account Settings'];
  final List<Widget> _pages = const [MainScreen(), SettingScreen()];

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

  Widget get CurrentPageWidget => _pages[currentIndex];
}
