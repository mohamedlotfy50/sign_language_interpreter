// import 'package:firebase_auth/firebase_auth.dart';
//
// abstract class BaseAuth{
//   Future<String> signInWithEmailAndPassword(String email, String password);
// }
//
// class Auth implements BaseAuth{
//   Future<String> signInWithEmailAndPassword(String email, String password) async{
//     FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((value) => user.uid);
//
//   };
//
//   Future<String> createUserWithEmailAndPassword(String email, String password) async{
//     FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).then((value);
//     return value.user.uid;
//   };
//
// }

import 'package:firebase_auth/firebase_auth.dart';

//FirebaseResult ==> USer

//FirebaseUser ==> USer
//AuthResult==> UserCredential
//GoogleAuthProvider.getCredential() ==> GoogleAuthProvider.credential()
class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Users? _userFormFirebaseUser(User user) {
  //   // ignore: unnecessary_null_comparison
  //   if (user != null) {
  //     return Users(uid: user.uid, email: user.email, name: '', password: '');
  //   } else {
  //     return null;
  //   }
  // }

  //comment
  Future<User?> signIn(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      print('the user is ${user}');
      print('the result is ${result.user}');
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

// class AuthService{
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   // FirebaseAuth auth = FirebaseAuth.instance;
//
//   Users? _userFromFirebaseUser(User user){
//     if (user != null) {
//       return Users(uid: Users.uid);
//     } else {
//       return null;
//     }
//   }
//
//   Future signInAnon() async{
//     try{
//
//       UserCredential result = await _auth.signInAnonymously();
//       User? user = result.user;
//       return user;
//     } catch(e){
//       print(e.toString());
//       return null;
//     }
//   }
// }
}
