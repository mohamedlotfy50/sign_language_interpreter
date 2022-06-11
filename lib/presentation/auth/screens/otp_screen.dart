// import 'package:email_auth/email_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sign_language_interpreter/asset_locations.dart';
// import 'package:sign_language_interpreter/constrant.dart';
import 'package:sign_language_interpreter/presentation//auth/widgets/clip.dart';

import '../../../asset_locations.dart';

// import 'package:sign_language_interpreter/presentation/auth/screens/forget_password.dart';
class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  // final TextEditingController _emailControl = TextEditingController();
  // final TextEditingController _otpControl = TextEditingController();

  final TextEditingController _confirmPassword = TextEditingController();
  // late int otp;
  // late String password;
  // late String conPassword;
  bool val = true;
  // EmailAuth emailAuth = new EmailAuth(sessionName: "OTP session",);

  onSwitchValueChanged(bool newval) {
    setState(() {
      val = newval;
    });
  }

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _conPasswordController = TextEditingController();

  // void verifyOTP() {
  //   var res = emailAuth.validateOtp(
  //       recipientMail: _emailController.value.text,
  //       userOtp: _otpController.value.text);
  //   if (res) {
  //     print("OTP verified");
  //   }
  //   else {
  //     print("Invalid OTP");
  //   }
  // }

  void userResetPass({
    // required String username,
    required String code,
    required String password,
    // required String conPassword,
  }) {
    // FirebaseAuth.instance.confirmPasswordReset(code: code, newPassword: password);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const BackgroundClip(),
            Positioned(
              right: 0,
              left: 0,
              top: 50,
              bottom: 20,
              child: Form(
                key: formKey,
                // autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Container(
                  width: size.width,
                  height: size.height * 0.77,
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
                      Image.asset(AssetLocations.otp),
                      // TextFormField(
                      //     decoration: const InputDecoration(hintText: "User Name", prefixIcon: Icon(Icons.person),),
                      //     validator: (value) {
                      //       if (value!.isEmpty || value.length < 4) {
                      //         return 'Please enter name must be at least 4 char';
                      //       }
                      //       return null;
                      //     },
                      //     onSaved: (value) =>setState(() => username = value!,)
                      // ),
                      TextFormField(
                        controller: _otpController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Password";
                          }
                          if (value.length < 6) {
                            return "Please enter Password must be at least 7 char";
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          hintText: "OTP",
                          prefixIcon: Icon(Icons.phonelink_lock_outlined),
                        ),
                      ),
                      TextFormField(
                        obscureText: true,
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.vpn_key_rounded),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Password";
                          }
                          if (value.length < 7) {
                            return "Please enter Password must be at least 7 char";
                          }
                          return null;
                        },
                        // onSaved: (value) => setState(() => password = value!),
                      ),
                      TextFormField(
                        obscureText: true,
                        controller: _conPasswordController,
                        decoration: const InputDecoration(
                          hintText: "Confirm Password",
                          prefixIcon: Icon(Icons.lock_outlined),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Confirm Password";
                          }
                          if (_conPasswordController.text !=
                              _passwordController.text) {
                            return "Passsword Don not match";
                          }
                          return null;
                        },
                        // onSaved: (value) => setState(() => conPassword = value!),
                      ),
                      SizedBox(
                        height: 45,
                        width: size.width / 2.5,
                        child: ElevatedButton(
                          onPressed: () {
                            // verifyOTP();
                            userResetPass(
                                code: _otpController.text,
                                password: _passwordController.text);
                            if (formKey.currentState!.validate()) {
                              // const snackBar = SnackBar(content: Text("Successful",
                              //   style: TextStyle(fontSize: 20,),),
                              //   backgroundColor: Colors.green,);
                              // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              // Navigator.pushNamed(context,'/signin');
                            }
                          },
                          child: const Text(
                            'Confirm',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
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
}

//
// class OTPScreen extends StatelessWidget {
//   const OTPScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//           children: [
//             Container(
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
//             Container(
//               // margin: EdgeInsets.only(bottom: 25),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         height: MediaQuery.of(context).size.height * 0.8,
//                         width: MediaQuery.of(context).size.width * 0.8,
//                         // child: TextFieldContainer(
                        //   child: Column(
                        //     children: [
                        //       SizedBox(
                        //         height: 10,
                        //       ),
                        //       Image.asset(AseetForget.otp),
                        //       InputField(
                        //         hintText: ' OTP',
                        //         icon: Icons.phonelink_lock_outlined,
                        //       ),
                        //       SizedBox(
                        //         height: 10,
                        //       ),
                        //       InputField(
                        //         hintText: ' Password',
                        //         ConIcon: Icons.visibility_off,
                        //       ),
                        //       SizedBox(
                        //         height: 10,
                        //       ),
                        //       InputField(
                        //         hintText: ' Confirm Password',
                        //         icon: Icons.lock_outlined,
                        //         ConIcon: Icons.visibility_off,
                        //       ),
                        //       // SizedBox(
                        //       //   height: 7,
                        //       // ),
                        //       RoundButton(
                        //         text: "Confirm",
                        //         color: BtnColor,
                        //         textColor: BtnText,
                        //         page: '/signup',
                        //       ),
                        //     ],
                        //   ),
                        // ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }

