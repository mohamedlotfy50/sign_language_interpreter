import 'package:flutter/material.dart';
import 'package:sign_language_interpreter/constrant.dart';
import 'package:sign_language_interpreter/presentation//auth/widgets/clip.dart';
import 'package:sign_language_interpreter/presentation/auth/screens/forget_password.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/TextField.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/auth_button.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/haveAccount.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/input_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/sign_in_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key,}) : super(key: key);
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomRight: Radius.zero),
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
          ),
          Container(
            width: double.infinity,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(
                    color: HeaderText,
                    fontSize: 44,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFieldContainer(
                      child: Column(
                        children: [
                          InputField(
                            hintText: 'User Name',
                            icon: Icons.person,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InputField(
                            hintText: 'Password',
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(left: 20,top:12,right: 20,),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => ForgetPassword()),
                                  );
                                },
                                child: Text(
                                  "Forget Password",
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    color: SpanText,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.8,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                          ),
                          RoundButton(
                            text: "Sign In",
                            color: BtnColor,
                            textColor: BtnText,
                            page: '/home',

                          ),
                          HaveAccount(textColor1: SpanText, textColor2: SpanText)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(top:25, bottom: 25,),
                    height: 150,
                    width: double.infinity,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SignIn(text1: "Sign In with Google", color1: Colors.deepOrangeAccent, icon1: FontAwesomeIcons.google),
                        SignIn(text1: "Sign In With Facebook", color1: Colors.blueAccent, icon1: FontAwesomeIcons.facebook),
                      ],
                    ),
                  ),
                ],
            ),
        ],
      ),
    );
  }
}