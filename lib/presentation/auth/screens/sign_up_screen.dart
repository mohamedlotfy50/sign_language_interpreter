import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../application/auth/auth_provider.dart';
import '../../../domain/auth/model.dart';
import '../../../domain/auth/validation.dart';
import '../widgets/have_account.dart';
import '../..//auth/widgets/clip.dart';
import '../../../domain/auth/model.dart';
import '../../home/screens/main_wrapper_screen.dart';

class SignUpScreen extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final AuthProvider provider =
        Provider.of<AuthProvider>(context, listen: false);
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
                        // controller: _userController,
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
                        // controller: _emailController,
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
                      TextFormField(
                        // controller: _passwordController,
                        // obscureText:
                        //     _passwordVisible, //This will obscure text dynamically
                        decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.vpn_key_rounded),
                          suffixIcon: IconButton(
                            icon: Icon(
                              // Based on passwordVisible state choose the icon
                              // _passwordVisible
                              //     ? Icons.visibility
                              //     :
                              Icons.visibility_off,
                              color: Theme.of(context).primaryColorDark,
                            ),
                            onPressed: null,
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
                      ),

                      SizedBox(
                        width: size.width / 2.5,
                        child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {}
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
}
