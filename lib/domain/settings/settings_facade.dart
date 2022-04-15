import '../auth/user_model.dart';

abstract class SettingFacade {
  Future<UserModel?> updateUserDatat(UserModel userModel);
  Future<bool> getImageFromDivce();
}
