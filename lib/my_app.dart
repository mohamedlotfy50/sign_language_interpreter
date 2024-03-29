import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sign_language_interpreter/l10n/locals.dart';
import 'application/auth/auth_provider.dart';
import 'domain/auth/auth_states.dart';
import 'presentation/interpreter/screens/interpreter_screen.dart';
import 'domain/auth/user_model.dart';
// import 'package:sign_language_interpreter/asset_locations.dart';
import 'package:sign_language_interpreter/presentation/auth/screens/forget_password.dart';
import 'package:sign_language_interpreter/presentation/auth/screens/otp_screen.dart';
import 'package:sign_language_interpreter/presentation/auth/screens/sign_in_screen.dart';
import 'package:sign_language_interpreter/presentation/auth/screens/sign_up_screen.dart';
// import 'package:sign_language_interpreter/presentation/home/screens/drawer.dart';
import 'package:sign_language_interpreter/presentation/home/screens/main_wrapper_screen.dart';
import 'package:sign_language_interpreter/presentation/home/screens/setting_screen.dart';
import 'package:sign_language_interpreter/presentation/home/screens/account_screen.dart';
// import 'package:sign_language_interpreter/presentation/onboard_screen/screens/board_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        AppLocalizations.delegate,
      ],
      supportedLocales: SupportedLocals.all,
      theme: ThemeData(
        primaryColor: const Color(0xFF448CF2),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              const Color(0xFF448CF2),
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ),
        colorScheme: const ColorScheme.light(onSecondary: Color(0xFF448CF2)),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color: Color(0xFF448CF2), width: 2),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.lightBlue, width: 2),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Color(0xFF448CF2),
              width: 1.5,
            ),
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0ea6cc),
        ),
      ),
      locale: SupportedLocals.all[0],
      home: ChangeNotifierProvider(
          create: (context) => AuthProvider()..authStateChanges(),
          builder: (context, child) {
            final watch = context.watch<AuthProvider>();
            if (watch.authStates == AuthStates.loading) {
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else if (watch.authStates == AuthStates.logged) {
              return MainScreenWrapper();
            } else {
              return SignInScreen();
            }
          }),
    );
  }
}
