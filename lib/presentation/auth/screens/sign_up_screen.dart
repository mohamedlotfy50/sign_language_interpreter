import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import '../../../domain/auth/model.dart';
import '../../../domain/auth/validation.dart';
import '../widgets/have_account.dart';
import '../..//auth/widgets/clip.dart';
import '../../../domain/auth/model.dart';
import '../../home/screens/home.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _userController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  // TextEditingController _ConPasswordController = TextEditingController();
  bool _passwordVisible = true;
  bool val = true;

  void userRegister({
    String? uid,
    required String username,
    required String email,
    required String password,
  }) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) async {
      final UserModel user = UserModel(
          uid: value.user!.uid,
          password: password,
          email: email,
          username: username);
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(value.user!.uid)
          .set(user.toMap());

      // FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
      // User? user = FirebaseAuth.instance.currentUser;
      // UserModel userModel = UserModel();
      // userModel.uid = user!.uid;
      // await firebaseFirestore
      //     .collection("Users")
      //     .doc(user.uid)
      //     .set(userModel.toMap());

      // UserModel noteToAdd = UserModel(
      //   username: username,
      //   email: email,
      //   password: password,
      // );
      // await FirebaseFirestore.instance.collection('Users').doc(uid).set(noteToAdd.toMap());

      // Future<void> uploadingData(String username, String email,String password,) async {
      //   await FirebaseFirestore.instance.collection('Users').add({email: email,password: password,username: username,uid: value.user!.uid}).toMap());
      //
      // }
      // print(value.user?.email);
      // print(value.user?.uid);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("User account created")));
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (ctx) => HomeScreen(
                    user: user,
                  )),
          (route) => false);
      // await FirebaseFirestore.instance.collection('Users').add(custom.Users(password:password,email: email ,name: username ).toMap());
      // await FirebaseFirestore.instance.collection('Users').add(custom.Users(password:password,email: email ,name: username ).toMap());
    }).catchError((e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("User login failed " + e.toString())));
    });
  }

  onSwitchValueChange(bool newval) {
    setState(() {
      val = newval;
    });
  }

  onSwitchValueChanged() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    final Size size = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const BackgroundClip(),
            const Positioned(
              top: 70,
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 44,
                ),
              ),
            ),
            Positioned(
              right: 0,
              left: 0,
              top: 150,
              child: Form(
                key: formKey,
                // autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Container(
                  width: size.width,
                  height: size.height * 0.65,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: const Offset(0, 10),
                        blurRadius: 20,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "User Name",
                          prefixIcon: Icon(Icons.person),
                        ),
                        controller: _userController,
                        validator: (value) {
                          final bool isvalidName = Validator.isValidName(value);
                          if (isvalidName) {
                            return null;
                          }
                          return 'Please Enter User Name';
                        },
                        // onSaved: (value) =>setState(() => username = value!,)
                      ),

                      // const SizedBox(height: 0,),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Email",
                          prefixIcon: Icon(Icons.email),
                        ),
                        controller: _emailController,
                        validator: (value) {
                          final bool isvalidEmail =
                              Validator.isValidEmail(value);
                          if (isvalidEmail) {
                            return 'Please Enter Valid Email';
                          }
                          return null;
                          // if(value!.isEmpty){
                          //   return "Please Enter Email";
                          // }
                          // if(!RegExp(r'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9]+\.[a-zA-z]+$').hasMatch(value)){
                          //   return "Please Enter Valid Email";
                          // }
                          // return null;
                        },
                        // onSaved: (value) => setState(() => email = value!),
                      ),
                      const SizedBox(height: 0),
                      TextFormField(
                        controller: _passwordController,
                        obscureText:
                            _passwordVisible, //This will obscure text dynamically
                        decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.vpn_key_rounded),
                          suffixIcon: IconButton(
                            icon: Icon(
                              // Based on passwordVisible state choose the icon
                              _passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Theme.of(context).primaryColorDark,
                            ),
                            onPressed: onSwitchValueChanged,
                          ),
                        ),
                        // obscureText: true,
                        // decoration: const InputDecoration(hintText: "Password", prefixIcon: Icon(Icons.vpn_key_rounded),),
                        validator: (value) {
                          final bool isvalidPass =
                              Validator.isValidPassword(value);
                          if (isvalidPass) {
                            return null;
                          }
                          return 'Password must be at least 7 char';
                        },
                        // onSaved: (value) =>setState(() => password = value!,)// validator: Validator.isValidPassword,
                      ),
                      // Container(
                      //   width: double.infinity,
                      //   margin: const EdgeInsets.only(left: 20,),
                      //     child:SwitchListTile.adaptive(
                      //       title: const Text(
                      //         "Is Deaf",
                      //         style: TextStyle(
                      //           color: Colors.blueAccent,
                      //           fontSize: 20,
                      //           fontWeight: FontWeight.w700,
                      //         ),
                      //       ),
                      //         value: val,
                      //         activeColor: Colors.deepOrange,
                      //         onChanged: (newval) {
                      //           onSwitchValueChange(newval);}
                      //     ),
                      // ),
                      SizedBox(
                        height: 45,
                        width: size.width / 2.5,
                        child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              userRegister(
                                username: _userController.text,
                                email: _emailController.text,
                                password: _passwordController.text,
                              );

                              // formKey.currentState!.save();
                              // const snackBar = SnackBar(content: Text("Successful",
                              //   style: TextStyle(fontSize: 20,),),
                              //     backgroundColor: Colors.green,);
                              //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              //     Navigator.pushNamed(context,'/home');
                            }
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      const HaveAccount(
                        login: false,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // void signUp(String email, String password) async {
  //   if (formKey.currentState!.validate()) {
  //     try {
  //       await _auth
  //           .createUserWithEmailAndPassword(email: email, password: password)
  //           // .then((value) => {postDetailsToFirestore()})
  //           .catchError((e) {
  //         Fluttertoast.showToast(msg: e.message);
  //       });
  //     } on FirebaseAuthException catch (error) {
  //       switch (error.code) {
  //         case "invalid-email":
  //           errorMessage = "Your email address appears to be malformed.";
  //           break;
  //         case "wrong-password":
  //           errorMessage = "Your password is wrong.";
  //           break;
  //         case "user-not-found":
  //           errorMessage = "User with this email doesn't exist.";
  //           break;
  //         case "user-disabled":
  //           errorMessage = "User with this email has been disabled.";
  //           break;
  //         case "too-many-requests":
  //           errorMessage = "Too many requests";
  //           break;
  //         case "operation-not-allowed":
  //           errorMessage = "Signing in with Email and Password is not enabled.";
  //           break;
  //         default:
  //           errorMessage = "An undefined Error happened.";
  //       }
  //       Fluttertoast.showToast(msg: errorMessage);
  //       print(error.code);
  //     }
  //   }
  // }
  // postDetailsToFirestore() async {
  //   // calling our firestore
  //   // calling our user model
  //   // sending these values
  //
  //   FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  //   User user = _auth.currentUser;
  //
  //   UserModel userModel = UserModel();
  //
  //   // writing all the values
  //   userModel.email = user.email;
  //   userModel.uId = user.uid;
  //   userModel.phone = phoneEditingController.text;
  //   userModel.name = userNameEditingController.text;
  //
  //   await firebaseFirestore
  //       .collection("users")
  //       .doc(user.uid)
  //       .set(userModel.toMap());
  //   Fluttertoast.showToast(msg: "Account created successfully :) ");
  //
  //   // Navigator.pushAndRemoveUntil(
  //   //     (context),
  //   //     MaterialPageRoute(builder: (context) => HomeScreen()),
  //   //         (route) => false);
  // }
}










// Container(
//
//   ),
//   Container(
//     width: double.infinity,
//     height: 200,
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Text(
//           'Sign Up',
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 44,
//           ),
//         ),
//       ],
//     ),
//   ),
//   Container(
//     // margin: EdgeInsets.only(bottom: 25),
//     height: MediaQuery.of(context).size.height * 0.72,
//     width: MediaQuery.of(context).size.width * 0.85,
//
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(

//                 // child: TextFieldContainer(
//                 //   child: Column(
//                 //     children: [
//                 //       InputField(
//                 //         hintText: ' User Name',
//                 //         icon: Icons.person,
//                 //       ),
//                 //       SizedBox(
//                 //         height: 10,
//                 //       ),
//                 //       InputField(
//                 //         hintText: ' Email',
//                 //         icon: Icons.email,
//                 //       ),
//                 //       SizedBox(
//                 //         height: 10,
//                 //       ),
//                 //       InputField(
//                 //         hintText: ' Password',
//                 //       ),
//                 //       SizedBox(
//                 //         height: 7,
//                 //       ),
//                 //       Container(
//                 //         width: double.infinity,
//                 //         margin: EdgeInsets.only(left: 20,),
//                 //           child:SwitchListTile.adaptive(
//                 //             title: const Text(
//                 //               "Is Deaf",
//                 //               style: TextStyle(
//                 //                 color: Colors.blueAccent,
//                 //                 fontSize: 20,
//                 //                 fontWeight: FontWeight.w700,
//                 //               ),
//                 //             ),
//                 //               value: val,
//                 //               activeColor: Colors.deepOrange,
//                 //               onChanged: (newval) {
//                 //                 onSwitchValueChanged(newval);}
//                 //           ),
//                 //       ),

//                 //       RoundButton(
//                 //         text: "Sign Up",
//                 //         color: Colors.blueAccent,
//                 //         textColor: Colors.white,
//                 //       ),
//                 //       HaveAccount(
//                 //         textColor1: Colors.blueAccent,
//                 //         textColor2: Colors.blueAccent,
//                 //         login: false,
//                 //       )
//                 //     ],
//                 //   ),
//                 // ),
//                 ),
//           ],
//         ),
//       ],
//     ),
//   ),
