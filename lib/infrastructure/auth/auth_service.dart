import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import '../../domain/auth/auth_facade.dart';
import '../../domain/auth/user_model.dart';
import '../core/colltion_names.dart';

class AuthService extends AuthFacade {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  @override
  Future<bool> forgotPassword({required String email}) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return true;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<UserModel?> login(
      {required String email, required String password}) async {
    try {
      final UserCredential credential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      final DocumentSnapshot<Map<String, dynamic>> userData = await _firestore
          .collection(CollectionNames.users)
          .doc(credential.user!.uid)
          .get();

      UserModel user = UserModel.fromMap(userData.data()!);
      return user;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<UserModel?> signup(
      {required String username,
      required String email,
      required String password}) async {
    try {
      final UserCredential credential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      final UserModel user = UserModel(
          uid: credential.user!.uid,
          password: password,
          email: email,
          username: username);
      await _firestore
          .collection(CollectionNames.users)
          .doc(credential.user!.uid)
          .set(user.toMap());

      return user;
    } catch (_) {
      return null;
    }
  }

  @override
  Future<UserModel?> gmailLogin() async {
    try {
      GoogleSignInAccount? gmail = await _googleSignIn.signIn();
      if (gmail == null) {
        return null;
      }
      final GoogleSignInAuthentication gmailAuth = await gmail.authentication;

      final OAuthCredential credential = GoogleAuthProvider.credential(
          accessToken: gmailAuth.accessToken, idToken: gmailAuth.idToken);
      final UserCredential firebaseCredential =
          await _firebaseAuth.signInWithCredential(credential);
      late final UserModel user;

      await _firestore
          .collection(CollectionNames.users)
          .doc(firebaseCredential.user!.uid)
          .get()
          .then((value) async {
        if (value.exists) {
          user = UserModel.fromMap(value.data()!);
        } else {
          user = UserModel(
            uid: firebaseCredential.user!.uid,
            password: '',
            email: gmail.email,
            username: gmail.displayName ?? '',
            imagePath: gmail.photoUrl ?? '',
          );
          await value.reference.set(user.toMap());
        }
      });

      return user;
    } on FirebaseException catch (_) {
      return null;
    }
  }

  @override
  Future<UserModel?> appleLogin() async {
    try {
      final String redirectURL =
          "https://SERVER_AS_PER_THE_DOCS.glitch.me/callbacks/sign_in_with_apple";
      final String clientID = "AS_PER_THE_DOCS";
      final AuthorizationCredentialAppleID credential =
          await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        webAuthenticationOptions: WebAuthenticationOptions(
            clientId: clientID, redirectUri: Uri.parse(redirectURL)),
      );
      final OAuthCredential appleCredential = OAuthProvider('apple.com')
          .credential(
              accessToken: credential.authorizationCode,
              idToken: credential.identityToken);
      final UserCredential firebaseCredential =
          await _firebaseAuth.signInWithCredential(appleCredential);
      late final UserModel user;

      await _firestore
          .collection(CollectionNames.users)
          .doc(firebaseCredential.user!.uid)
          .get()
          .then((value) async {
        if (value.exists) {
          user = UserModel.fromMap(value.data()!);
        } else {
          user = UserModel(
            uid: firebaseCredential.user!.uid,
            password: '',
            email: credential.email ?? '',
            username: credential.givenName ?? '',
          );
          await value.reference.set(user.toMap());
        }
      });

      return user;
    } on FirebaseException catch (_) {
      return null;
    }
  }

  @override
  Future<bool> isLogedinUser() async {
    try {
      final User? user = _firebaseAuth.currentUser;
      return user != null;
    } catch (_) {
      return false;
    }
  }

  @override
  Stream<UserModel?> authStateChanges() {
    UserModel? userModel;
    final StreamController<UserModel?> userStream =
        StreamController<UserModel?>();
    // ignore: void_checks

    _firebaseAuth.authStateChanges().listen((firebaseUser) async {
      if (firebaseUser != null) {
        if (userModel == null) {
          final DocumentSnapshot<Map<String, dynamic>> userData =
              await _firestore
                  .collection(CollectionNames.users)
                  .doc(firebaseUser.uid)
                  .get();
          userModel = UserModel.fromMap(userData.data()!);
        }
        userStream.add(userModel);
      } else {
        userStream.add(null);
      }
    });
    return userStream.stream;
  }

  @override
  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<UserModel?> refreshUser(String uid) async {
    final DocumentSnapshot<Map<String, dynamic>> userData =
        await _firestore.collection(CollectionNames.users).doc(uid).get();
    return UserModel.fromMap(userData.data()!);
  }
}
