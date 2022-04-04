import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sign_language_interpreter/domain/auth/validation.dart';
import 'package:sign_language_interpreter/presentation//auth/widgets/clip.dart';
// import 'package:email_auth/email_auth.dart';

import '../../../asset_locations.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _otpControl = TextEditingController();

  // EmailAuth emailAuth = new EmailAuth(sessionName: "OTP session",);
  // void verifyOTP() {
  //   var res = emailAuth.validateOtp(
  //       recipientMail: _emailControl.value.text,
  //       userOtp: _otpControl.value.text);
  //   if (res) {
  //     print("OTP verified");
  //   }
  //   else {
  //     print("Invalid OTP");
  //   }
  // }
  void sendOTP(String email) async{
    // var res = await emailAuth.sendOtp(
    //     recipientMail: _emailController.value.text);
    // if(res){print("OTP Sent");}
    // else{print("OTP Don not Sent");}
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);

  }

  bool val = true;
  onSwitchValueChanged(bool newval) {
    setState(() {
      val = newval;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Firebase.initializeApp();
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
              top: 70,
              child: Column(
                children: const [
                  Text(
                    'Forget Password',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 44,),
                  ),
                  SizedBox(height: 8,),
                  Text(
                    " Confirm your email and we will \n send the instructions.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
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
                  height: size.height*0.59,
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
                      Image.asset(AssetLocations.forget),
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
                      const SizedBox(height: 0,),
                      TextFormField(
                        decoration: const InputDecoration(hintText: "Email", prefixIcon: Icon(Icons.email),),
                        controller: _emailController,
                        validator: (value){
                          final bool isvalidEmail = Validator.isValidEmail(value);
                          if(isvalidEmail){
                            return null;
                          }
                          return 'Please Enter Valid Email';
                        },
                        // onSaved: (value) => setState(() => email = value!),

                      ),
                      SizedBox(
                        height: 45,
                        width: size.width / 2.5,
                        child: ElevatedButton(
                          // onPressed: () => {
                          //   Navigator.pushNamed(context,page),
                          // },
                          onPressed: () {
                            sendOTP(_emailController.text);
                            // if (formKey.currentState!.validate()) {
                            //   sendOTP();
                            //   const snackBar = SnackBar(content: Text("Successful",
                            //     style: TextStyle(fontSize: 20,),),
                            //     backgroundColor: Colors.green,);
                            //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            //   Navigator.pushNamed(context,'/otp');
                            // }

                            },
                          child: const Text('Send',
                            style: TextStyle(fontSize: 20,),
                          ),
                        ),
                      ),
                      // const RoundButton(text: "Send", page: '/otp',),
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
//             height: 250,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   'Forget Password',
//                   style: TextStyle(
//                     fontSize: 44,
//                   ),
//                 ),
//                 SizedBox(height: 8,),
//                 Text(
//                   " Confirm your email and we will \n send the instructions.",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 20,
//                   ),),
//               ],
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.only(bottom: 25),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       height: MediaQuery.of(context).size.height * 0.65,
//                       width: MediaQuery.of(context).size.width * 0.8,
//                       child: TextFormField(),
//                       //   child: Column(
//                       //     children: [
//                       //       SizedBox(
//                       //         height: 20,
//                       //       ),
//                       //      Image.asset(AssetLocations.forget),
//                       //       // InputField(
//                       //       //   hintText: ' Email',
//                       //       //   icon: Icons.email,
//                       //       // ),
//                       //       RoundButton(
//                       //         text: "Send",
//                       //         page: '/otp',
//                       //
//                       //       ),
//                       //     ],
//                       //   ),
//                       // ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }
