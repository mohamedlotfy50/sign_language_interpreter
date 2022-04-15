import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sign_language_interpreter/domain/auth/user_model.dart';
import 'package:sign_language_interpreter/domain/settings/settings_facade.dart';
import 'package:sign_language_interpreter/infrastructure/core/colltion_names.dart';

class SettingsService extends SettingFacade {
  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final ImagePicker _picker = ImagePicker();
  XFile? _imageFile;

  @override
  Future<bool> getImageFromDivce() async {
    _imageFile = await _picker.pickImage(source: ImageSource.gallery);
    if (_imageFile != null) {
      return true;
    }
    return false;
  }

  @override
  Future<UserModel?> updateUserDatat(UserModel userModel) async {
    UserModel? user;
    String? url;
    if (_imageFile != null) {
      final bytes = await _imageFile!.readAsBytes();
      final TaskSnapshot image = await _firebaseStorage
          .ref()
          .child(CollectionNames.users)
          .child(userModel.uid + "_" + DateTime.now().toString())
          .putData(bytes);
      print('done uploading');
      if (image.state == TaskState.success) {
        url = await image.ref.getDownloadURL();
        user = userModel.copyWith(imagePath: url);
      }
    }
    await _firebaseFirestore
        .collection(CollectionNames.users)
        .doc(userModel.uid)
        .update(user?.toMap() ?? userModel.toMap());
    print('done geting url');

    return user;
  }

  File? get hasCachedImage =>
      _imageFile != null ? File(_imageFile!.path) : null;
}
