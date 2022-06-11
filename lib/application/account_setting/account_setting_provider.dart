import 'dart:io';

import 'package:flutter/material.dart';
import '../../infrastructure/core/app_state.dart';
import '../../infrastructure/helpers/permission_handler.dart';
import '../../infrastructure/settings/settings_service.dart';

import '../../domain/auth/user_model.dart';

class AccountSettingProvider extends ChangeNotifier {
  final SettingsService _settingsService = SettingsService();
  final PermissionChecker _permissionChecker = PermissionChecker();
  AppState state = AppState.init;
  UserModel userModel;

  File? get image => _settingsService.hasCachedImage;
  String _userName = '', _email = '', _phone = '';

  bool useNameEditing = false, useEmailEditing = false, usePhoneEditing = false;

  AccountSettingProvider(this.userModel);

  void setUserName(String val) {
    _userName = val;
  }

  void setEmail(String val) {
    _email = val;
  }

  void setPhone(String val) {
    _phone = val;
  }

  void toggleUseNameEditing() {
    useNameEditing = !useNameEditing;
    notifyListeners();
  }

  void toggleUseEmailEditing() {
    useEmailEditing = !useEmailEditing;
    notifyListeners();
  }

  void toggleUsePhoneEditing() {
    usePhoneEditing = !usePhoneEditing;
    notifyListeners();
  }

  Future<void> pickAnImage() async {
    state = AppState.loading;
    notifyListeners();
    final bool hasPermitted = await _permissionChecker.storage();
    if (hasPermitted) {
      await _settingsService.getImageFromDivce();
    }

    state = AppState.init;
    notifyListeners();
  }

  Future<void> upDateUserData() async {
    useNameEditing = false;
    useEmailEditing = false;
    usePhoneEditing = false;
    state = AppState.loading;
    notifyListeners();
    final UserModel? updated =
        await _settingsService.updateUserDatat(userModel.copyWith(
      username: _userName.isNotEmpty ? _userName : null,
      email: _email.isNotEmpty ? _email : null,
      phone: _phone.isNotEmpty ? _phone : null,
    ));

    if (updated != null) {
      userModel = updated;
      state = AppState.loaded;
      notifyListeners();
    } else {
      state = AppState.error;
      notifyListeners();
    }
  }
}
