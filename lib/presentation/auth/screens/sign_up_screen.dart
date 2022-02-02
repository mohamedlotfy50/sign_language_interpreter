import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/icon_button.dart';
import 'package:sign_language_interpreter/presentation//auth/widgets/clip.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String username='';
  String email='';
  String password='';
  bool val = true;
  onSwitchValueChanged(bool newval) {
    setState(() {
      val = newval;
    });
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
            BackgroundClip(),
            Positioned(
              top: 70,
              child: Text(
                'Sign Up',
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
                  height: size.height*0.54,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset(0, 10),
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
                        decoration: InputDecoration(hintText: "User Name", prefixIcon: Icon(Icons.person),),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Please enter name";
                          }
                          if(value.length <4){
                            return "Please at least 4 char";
                          }
                          return null;
                        },
                        // maxLength: 30,
                        onSaved: (value) => setState(() => username = value!),
                      ),
                      SizedBox(height: 0,),
                      TextFormField(
                        decoration: InputDecoration(hintText: "Email", prefixIcon: Icon(Icons.email),),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Please Enter Email";
                          }
                          if(!RegExp(r'^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9]+\.[a-zA-z]+$').hasMatch(value!)){
                            return "Please Enter Valid Email";
                          }
                          return null;
                        },
                        onSaved: (value) => setState(() => email = value!),
                      ),
                      SizedBox(height: 0),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(hintText: "Password", prefixIcon: Icon(Icons.vpn_key_rounded),),
                        validator: (value){
                          if(value!.isEmpty){
                            return "Please enter Password";
                          }
                          if(value.length <7){
                            return "Password must be at least 7 char";
                          }
                          return null;
                        },
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(left: 20,),
                          child:SwitchListTile.adaptive(
                            title: const Text(
                              "Is Deaf",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                              value: val,
                              activeColor: Colors.deepOrange,
                              onChanged: (newval) {
                                onSwitchValueChanged(newval);}
                          ),
                      ),
                      Container(
                        height: 45,
                        width: size.width / 2.5,
                        child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              formKey.currentState!.save();
                              final message='UserName: $username, \n Password: $password';
                              final snackBar = SnackBar(content: Text(
                                message,
                                style: TextStyle(fontSize: 20,)
                                ,),
                                backgroundColor: Colors.green,
                              );
                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                            }
                          },
                          child: Text('Sign Up',
                            style: TextStyle(fontSize: 20,),
                          ),
                        ),
                      ),
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
                    ThirdPartyButton(
                      icon: FontAwesomeIcons.google,
                      text: 'Sign Up with Google',
                      color: Color(0xFFF86706),
                    ),
                    SizedBox(height: 20,),
                    ThirdPartyButton(
                      icon: FontAwesomeIcons.facebookF,
                      text: 'Sign Up with Facebook',
                      color: theme.primaryColor,
                    ),
                  ],
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
