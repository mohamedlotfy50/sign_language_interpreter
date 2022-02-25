import 'package:flutter/material.dart';
import 'package:sign_language_interpreter/presentation/auth/screens/sign_in_screen.dart';
import 'package:sign_language_interpreter/presentation/auth/screens/sign_up_screen.dart';

class HaveAccount extends StatelessWidget {
  final bool login;

  const HaveAccount({
    Key? key,
    this.login = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't have An Account ? " : "Already have an Account ? ",
          style: TextStyle(
            color: theme.primaryColor,
            letterSpacing: 0.8,
            fontSize: 15,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      login ? const SignUpScreen() : const SignInScreen())
            );
          },
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(
              color: theme.primaryColor,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.8,
              fontSize: 15,
            ),
          ),
        )
      ],
    );
  }
}
