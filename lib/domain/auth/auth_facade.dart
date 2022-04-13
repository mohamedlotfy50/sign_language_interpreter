import 'package:sign_language_interpreter/domain/auth/model.dart';

abstract class AuthFacade {
  Future<UserModel?> login({required String email, required String password});
  Future<void> logout();
  Future<bool> forgotPassword({required String email});
  Future<UserModel?> signup(
      {required String username,
      required String email,
      required String password});
  Future<UserModel?> gmailLogin();
  Future<bool> isLogedinUser();
  Future<UserModel?> appleLogin();
  Stream<UserModel?> authStateChanges();
}
