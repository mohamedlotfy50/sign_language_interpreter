import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_language_interpreter/presentation//auth/widgets/clip.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/TextField.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/auth_button.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/haveAccount.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/input_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

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
                    color: Colors.white,
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
                          RoundButton(
                            text: "Sign In",
                            color: Colors.blueAccent,
                            textColor: Colors.white,
                          ),
                          HaveAccount(
                              textColor1: Colors.blueAccent,
                              textColor2: Colors.blueAccent)
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
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                width: 300,
                child: Row(
                  children: [
                    FloatingActionButton.extended(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/google.svg',
                        width: 32.0,
                        height: 32.0,
                      ),
                      label: Text("Sign in with Google"),
                      backgroundColor: Colors.deepOrange,
                      foregroundColor: Colors.white,
                    ),
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
