import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sign_language_interpreter/domain/auth/auth_states.dart';
import '../../../application/auth/auth_provider.dart';
import '../../../domain/auth/user_model.dart';
import '../../../domain/auth/validation.dart';
import '../../../infrastructure/core/app_state.dart';
import '../widgets/have_account.dart';
import '../..//auth/widgets/clip.dart';
import '../../../domain/auth/user_model.dart';
import '../../home/screens/main_wrapper_screen.dart';

class SignUpScreen extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final AuthProvider provider =
        Provider.of<AuthProvider>(context, listen: true);
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
                autovalidateMode: provider.showError
                    ? AutovalidateMode.onUserInteraction
                    : AutovalidateMode.disabled,
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
                        onChanged: provider.setuserName,
                        decoration: const InputDecoration(
                          hintText: "User Name",
                          prefixIcon: Icon(Icons.person),
                        ),
                        validator: (value) {
                          final bool isvalidName = Validator.isValidName(value);
                          if (isvalidName) {
                            return null;
                          }
                          return 'Please Enter User Name';
                        },
                      ),
                      TextFormField(
                        onChanged: provider.setEmail,
                        decoration: const InputDecoration(
                          hintText: "Email",
                          prefixIcon: Icon(Icons.email),
                        ),
                        validator: (value) {
                          final bool isvalidEmail =
                              Validator.isValidEmail(value);
                          if (isvalidEmail) {
                            return null;
                          }
                          return 'Please Enter Valid Email';
                        },
                      ),
                      TextFormField(
                        onChanged: provider.setPassword,
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
                        obscureText: provider.isObscure,
                        // decoration: const InputDecoration(hintText: "Password", prefixIcon: Icon(Icons.vpn_key_rounded),),
                        validator: (value) {
                          final bool isvalidPass =
                              Validator.isValidPassword(value);
                          if (isvalidPass) {
                            return null;
                          }
                          return 'Password must be at least 8 char with uper and lower case and special char';
                        },
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
                              if (formKey.currentState!.validate()) {
                                await provider.signUp().then((value) {
                                  if (provider.appState == AppState.error) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text('Email is already in use'),
                                      duration: Duration(seconds: 3),
                                    ));
                                  } else if (provider.appState ==
                                      AppState.loaded) {
                                    Navigator.pop(context);
                                  }
                                });
                              } else {
                                provider.showErrors();
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
                      HaveAccount(
                        login: false,
                        onPressed: () {
                          Navigator.pop(context);
                        },
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
