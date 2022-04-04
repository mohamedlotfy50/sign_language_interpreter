import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sign_language_interpreter/domain/auth/autth.dart';
import 'package:sign_language_interpreter/domain/auth/model.dart';
import 'package:sign_language_interpreter/domain/auth/validation.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/have_account.dart';
import '../../home/screens/home.dart';
import '../widgets/icon_button.dart';
import 'package:sign_language_interpreter/presentation//auth/widgets/clip.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key,}) : super(key: key);
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool val = true;
  bool _passwordVisible = true;

  void userSignIn({
    required String email,
    required String password,}){
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email, password: password).then((value) async{
          final ins = await FirebaseFirestore.instance.collection('Users').doc(value.user!.uid).get();
          UserModel user = UserModel.fromMap(ins.data()!);



          ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("User logged in")));
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (ctx) => HomeScreen(
            user: user,
          )), (route) => false);
      // print(value.user?.email);
      // print(value.user?.uid);
    }).catchError((e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("User login failed " + e.toString())));
    });
  }

  //s
  //   Future<String> signInWithEmailAndPassword(String email, String password) async{
  //     FirebaseAuth.instance.signInWithEmailAndPassword( _emailC, password){
  //       return user.uid ;}
  //     }
  // final BaseAuth _auth;
  // void sigIIN() async{
  //     try{
  //       UserCredential userCredential = await FirebaseAuth.instance
  //           .signInWithEmailAndPassword(
  //           email: _emailController.text,
  //           password: _passwordController.text);
  //       print(userCredential);
  //       // await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text, password: _passwordController.text);
  //     } on FirebaseAuthException catch(e){
  //       if(e.code == 'user-not-found'){
  //         print('The account already exists');
  //       }
  //     }
  //     // catch(e){
  //     //   print(e);
  //     // }
  // }



  onSwitchValueChanged() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context){
    Firebase.initializeApp();
    final Size size = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const BackgroundClip(),
            const Positioned(
              top: 70,
              child: Text(
                'Sign In',
                style: TextStyle(color: Colors.white,
                  fontSize: 44,),
              ),
            ),
            Positioned(
              right: 0,
              left: 0,
              child: Form(
                key: formKey,
                // autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Container(
                  width: size.width,
                  height: size.height*0.45,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
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
                        decoration: const InputDecoration(hintText: "Email", prefixIcon: Icon(Icons.email),),
                        controller: _emailController,
                        validator: (value){
                          final bool isvalidEmail = Validator.isValidEmail(value);
                          if(isvalidEmail){
                            return 'Please Enter Valid Email';
                          }
                          return null;
                        },
                         // onSaved: (value) => setState(() =>  email = value!),
                      ),
                      //   onSaved: (value) => setState(() => username = value!),
                      // ),
                      // const SizedBox(height: 0,),
                      TextFormField(
                          controller: _passwordController,
                          obscureText: _passwordVisible,//This will obscure text dynamically
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
                        validator: (value){
                          final bool isvalidPass = Validator.isValidPassword(value);
                          if(isvalidPass){
                            return null;
                          }
                          return 'Password must be at least 7 char';
                        },
                          // onSaved: (value) =>setState(() => password = value!,)// validator: Validator.isValidPassword,
                      ),
                      const SizedBox(height: 2,),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/forget');
                        },
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                            "Forget Password",
                            style: TextStyle(
                              color: theme.primaryColor,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.8,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 45,
                        width: size.width / 2.5,
                        child: ElevatedButton(
                          onPressed: () async{
                            // final model = context.read<AuthModel>();
                            // await model.signIn(email: _emailController.text, password: _passwordController.text);

                            // dynamic await _auth.siignIn();
                            // try {
                            //   userCredential = await FirebaseAuth.instance
                            //       .signInWithEmailAndPassword(
                            //       email: _emailController.text,
                            //       password: _passwordController.text);
                            // }on FirebaseAuthException catch (e){
                            //   if(e.code == 'user-not-found'){
                            //     print('No User found');
                            //   }
                            //   else if(e.code =='email-already-in-use'){
                            //     print('The account already exists');
                            //   }
                            // } catch (e){ print(e);}
                            // print(userCredential);
                            // sigIIN( _emailController.text ,_passwordController.text);
                            // sigIIN();
                            // if (formKey.currentState!.validate()) {
                            //   userSignIn(
                            //     email: _emailController.text,
                            //     password: _passwordController.text,);
                            //   Navigator.of(context).push(
                            //     MaterialPageRoute(
                            //       builder: (_) => OTPScreen(),
                            //     ),
                            //   );
                            // }


                            if (formKey.currentState!.validate()) {
                              userSignIn(
                                email: _emailController.text,
                                password: _passwordController.text,);
                              formKey.currentState!.save();





                              // await _auth.signIn(_emailController.text,_passwordController.text).then((value) {
                              //   if(value==null){
                              //     // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('wrong email or paswword')));
                              //        const snackBar = SnackBar(content: Text("Wrong Email or Paswword",
                              //          style: TextStyle(fontSize: 20,),),
                              //          backgroundColor: Colors.red,);
                              //        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              //   }else{
                              //     // Navigator.of(context).pushNamed('/home', arguments: {'uid':})
                              //     // Navigator.pushNamed(context, '/home');
                              //   }
                              // });


                              // const snackBar = SnackBar(content: Text("Successful",
                              //   style: TextStyle(fontSize: 20,),),
                              //   backgroundColor: Colors.green,);
                              // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              }
                            },

                          child: const Text('Sign In',
                            style: TextStyle(fontSize: 20,),
                          ),
                        ),
                      ),
                      const HaveAccount(),
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const ThirdPartyButton(
                      icon: FontAwesomeIcons.google,
                      text: 'Sign Up with Google',
                      color: Color(0xFFF86706),
                    ),
                    const SizedBox(height: 20,),
                    ThirdPartyButton(
                      icon: FontAwesomeIcons.facebookF,
                      text: 'Sign Up with Facebook',
                      color: theme.primaryColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:sign_language_interpreter/constrant.dart';
// import 'package:sign_language_interpreter/presentation//auth/widgets/clip.dart';
// import 'package:sign_language_interpreter/presentation/auth/screens/forget_password.dart';
// import 'package:sign_language_interpreter/presentation/auth/widgets/TextField.dart';
// import 'package:sign_language_interpreter/presentation/auth/widgets/auth_button.dart';
// import 'package:sign_language_interpreter/presentation/auth/widgets/haveAccount.dart';
// import 'package:sign_language_interpreter/presentation/auth/widgets/input_field.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:sign_language_interpreter/presentation/auth/widgets/sign_in_button.dart';

// class SignInScreen extends StatefulWidget {
//   const SignInScreen({Key? key,}) : super(key: key);
//   @override
//   _SignInScreenState createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             child: ClipPath(
//               clipper: MyClipper(),
//               child: Container(
//                 height: 500,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(bottomRight: Radius.zero),
//                   gradient: LinearGradient(
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomLeft,
//                     colors: <Color>[
//                       Color(0xff23ccfc),
//                       Color(0xff7069fc),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Container(
//             width: double.infinity,
//             height: 200,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   'Sign In',
//                   style: TextStyle(
//                     color: HeaderText,
//                     fontSize: 44,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // Container(
//                   //   height: MediaQuery.of(context).size.height * 0.5,
//                   //   width: MediaQuery.of(context).size.width * 0.8,
//                   //   child: TextFieldContainer(

//                   //     child: Column(
//                   //       children: [
//                   //         InputField(
//                   //           hintText: 'User Name',
//                   //           icon: Icons.person,
//                   //         ),
//                   //         SizedBox(
//                   //           height: 20,
//                   //         ),
//                   //         InputField(
//                   //           hintText: 'Password',
//                   //         ),
//                   //         RoundButton(
//                   //           text: "Sign In",
//                   //           color: Colors.blueAccent,
//                   //           textColor: Colors.white,
//                   //         ),
//                   //         HaveAccount(textColor1: Colors.blueAccent, textColor2: Colors.blueAccent)
//                   //       ],
//                   //     ),
//                   //   ),
//                   // ),
//                 ],
//               ),
//             ],
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               Container(
//                 margin: EdgeInsets.only(
//                   top: 25,
//                   bottom: 25,
//                 ),
//                 height: 150,
//                 width: double.infinity,
//                 child: Column(
//                   // mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     SignIn(
//                         text1: "Sign In with Google",
//                         color1: Colors.deepOrangeAccent,
//                         icon1: FontAwesomeIcons.google),
//                     SignIn(
//                         text1: "Sign In With Facebook",
//                         color1: Colors.blueAccent,
//                         icon1: FontAwesomeIcons.facebook),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }



// void signUp(String email, String password) async {
//   if (formKey.currentState.validate()) {
//     try {
//       await _auth
//           .createUserWithEmailAndPassword(email: email, password: password)
//           .then((value) => {postDetailsToFirestore()})
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