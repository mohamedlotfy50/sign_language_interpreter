import 'package:flutter/material.dart';
import '../screens/sign_in_screen.dart';
import '../screens/sign_up_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HaveAccount extends StatelessWidget {
  final bool login;
  final void Function()? onPressed;

  const HaveAccount({
    Key? key,
    this.login = true,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final AppLocalizations locale = AppLocalizations.of(context)!;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? locale.dontHaveAccount : locale.alreadyHaveAccount,
          style: TextStyle(
            color: theme.primaryColor,
            letterSpacing: 0.8,
            fontSize: 15,
          ),
        ),
        GestureDetector(
          onTap: onPressed,
          child: Text(
            login ? locale.signUp : locale.signin,
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
