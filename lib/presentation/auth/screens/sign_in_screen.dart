import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:sign_language_interpreter/infrastructure/core/app_state.dart';
import '../../../application/auth/auth_provider.dart';
import '../../../domain/auth/user_model.dart';
import '../../../domain/auth/validation.dart';
import '../widgets/have_account.dart';
import '../../home/screens/main_wrapper_screen.dart';
import '../widgets/icon_button.dart';
import '../..//auth/widgets/clip.dart';

class SignInScreen extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  SignInScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final AuthProvider provider =
        Provider.of<AuthProvider>(context, listen: true);
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
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 44,
                ),
              ),
            ),
            Positioned(
              right: 0,
              left: 0,
              child: Form(
                key: formKey,
                autovalidateMode: provider.appState == AppState.init
                    ? AutovalidateMode.disabled
                    : AutovalidateMode.onUserInteraction,
                child: Container(
                  width: size.width,
                  height: size.height * 0.45,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  decoration: BoxDecoration(
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                          offset: Offset(3, 3),
                          color: Colors.black26,
                          spreadRadius: 3,
                          blurRadius: 5)
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Email",
                          prefixIcon: Icon(Icons.email),
                        ),
                        onChanged: provider.setEmail,
                        validator: (value) {
                          final bool isvalidEmail =
                              Validator.isValidEmail(value);
                          if (!isvalidEmail) {
                            return 'Please Enter Valid Email';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        obscureText: provider.isObscure,
                        decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: const Icon(Icons.vpn_key_rounded),
                          suffixIcon: IconButton(
                            icon: Icon(
                              provider.isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Theme.of(context).primaryColorDark,
                            ),
                            onPressed: provider.setPasswordVisability,
                          ),
                        ),
                        onChanged: provider.setPassword,
                        // validator: (value) {
                        //   final bool isvalidPass =
                        //       Validator.isValidPassword(value);
                        //   if (!isvalidPass) {
                        //     return 'Password must be at least 7 char';
                        //   }
                        //   return null;
                        // },
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/forget');
                        },
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                              color: theme.primaryColor,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.8,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      if (provider.appState == AppState.loading)
                        const Center(
                          child: CircularProgressIndicator(),
                        )
                      else
                        SizedBox(
                          width: size.width / 2.5,
                          child: ElevatedButton(
                            onPressed: () async {
                              await provider.loginWithEmailAndPassword();
                            },
                            child: const Text(
                              'Sign In',
                              style: TextStyle(
                                fontSize: 20,
                              ),
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
                    ThirdPartyButton(
                      onPressed: provider.loginWithGoogle,
                      icon: FontAwesomeIcons.google,
                      text: 'Sign In with Google',
                      color: const Color(0xFFF86706),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ThirdPartyButton(
                      onPressed: provider.loginWithApple,
                      icon: FontAwesomeIcons.apple,
                      text: 'Sign In with Apple',
                      color: Colors.black,
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
