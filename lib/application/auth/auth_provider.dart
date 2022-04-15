import 'package:flutter/material.dart';
import 'package:sign_language_interpreter/domain/auth/auth_states.dart';
import 'package:sign_language_interpreter/domain/auth/user_model.dart';
import 'package:sign_language_interpreter/infrastructure/auth/auth_service.dart';
import 'package:sign_language_interpreter/infrastructure/core/app_state.dart';

class AuthProvider extends ChangeNotifier {
  String _email = '', _username = '', _password = '';
  final AuthService _authService = AuthService();
  bool isObscure = true;
  AppState appState = AppState.init;
  AuthStates authStates = AuthStates.loading;
  late UserModel? user;

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

  Future<UserModel?> loginWithEmailAndPassword() async {
    appState = AppState.loading;

    notifyListeners();

    user =
        await _authService.login(email: 'noran1@test.com', password: '1234567');
    if (user == null) {
      appState = AppState.error;

      notifyListeners();
    } else {
      appState = AppState.loaded;
      notifyListeners();
    }
    return user;
  }

  Future<UserModel?> signUp() async {
    appState = AppState.loading;
    notifyListeners();

    user = await _authService.signup(
        username: _username, email: _email, password: _password);
    if (user == null) {
      appState = AppState.error;
      notifyListeners();
    } else {
      appState = AppState.loaded;
      notifyListeners();
    }
    return user;
  }

  Future<UserModel?> loginWithGoogle() async {
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
    return user;
  }

  Future<UserModel?> loginWithApple() async {
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
    return user;
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
