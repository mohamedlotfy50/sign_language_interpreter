import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sign_language_interpreter/presentation//auth/widgets/clip.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/TextField.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/auth_button.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/haveAccount.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/input_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool val = true;
  onSwitchValueChanged(bool newval) {
    setState(() {
      val = newval;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                    colors: <Color>[
                      Color(0xff23ccfc),
                      Color(0xff7069fc),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: size.height / 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [TextField()],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
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
