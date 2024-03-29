import 'package:flutter/material.dart';

import '../../domain/auth/auth_states.dart';
import '../../domain/auth/user_model.dart';
import '../../infrastructure/auth/auth_service.dart';
import '../../infrastructure/core/app_state.dart';

class AuthProvider extends ChangeNotifier {
  String _email = '', _username = '', _password = '';
  final AuthService _authService = AuthService();
  bool isObscure = true;
  AppState appState = AppState.init;
  AuthStates authStates = AuthStates.loading;
  late UserModel? user;
  bool _showError = false;
  bool get showError => _showError;

  void showErrors() {
    _showError = true;
    notifyListeners();
  }

  void setEmail(String val) {
    _email = val;
  }

  void setuserName(String val) {
    _username = val;
  }

  void setPasswordVisability() {
    isObscure = !isObscure;
    notifyListeners();
  }

  void setPassword(String val) {
    _password = val;
  }

  Future<void> loginWithEmailAndPassword() async {
    appState = AppState.loading;

    notifyListeners();

    user = await _authService.login(email: _email, password: _password);
    print(user);
    if (user == null) {
      appState = AppState.error;

      notifyListeners();
    } else {
      appState = AppState.loaded;
      notifyListeners();
    }
  }

  Future<void> signUp() async {
    appState = AppState.loading;
    notifyListeners();

    user = await _authService.signup(
        username: _username, email: _email, password: _password);
    if (user == null) {
      appState = AppState.error;
    } else {
      appState = AppState.loaded;
    }
    notifyListeners();
  }

  Future<void> loginWithGoogle() async {
    appState = AppState.loading;
    notifyListeners();

    user = await _authService.gmailLogin();
    if (user == null) {
      appState = AppState.error;
      notifyListeners();
    } else {
      appState = AppState.loaded;
      notifyListeners();
    }
  }

  Future<void> loginWithApple() async {
    appState = AppState.loading;
    notifyListeners();

    user = await _authService.appleLogin();
    if (user == null) {
      appState = AppState.error;
      notifyListeners();
    } else {
      appState = AppState.loaded;
      notifyListeners();
    }
  }

  void logout() async {
    await _authService.logout();

    notifyListeners();
  }

  Future<UserModel?> loginWithFacebook() async {}
  void authStateChanges() {
    authStates = AuthStates.loading;
    notifyListeners();
    _authService.authStateChanges().listen((event) {
      if (event != null) {
        authStates = AuthStates.logged;
      } else {
        authStates = AuthStates.notlogged;
      }
      user = event;
      notifyListeners();
      user?.printUser();
    });
  }

  void upDateUserData(UserModel newUser) {
    user = newUser;
    notifyListeners();
  }
}
