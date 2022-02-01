import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sign_language_interpreter/asset_locations.dart';
import 'package:sign_language_interpreter/constrant.dart';
import 'package:sign_language_interpreter/presentation//auth/widgets/clip.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/TextField.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/auth_button.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/input_field.dart';
import '../../../asset_locations.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

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
              // margin: EdgeInsets.only(bottom: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextFieldContainer(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset(AseetForget.otp),
                              InputField(
                                hintText: ' OTP',
                                icon: Icons.phonelink_lock_outlined,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InputField(
                                hintText: ' Password',
                                ConIcon: Icons.visibility_off,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InputField(
                                hintText: ' Confirm Password',
                                icon: Icons.lock_outlined,
                                ConIcon: Icons.visibility_off,
                              ),
                              // SizedBox(
                              //   height: 7,
                              // ),
                              RoundButton(
                                text: "Confirm",
                                color: BtnColor,
                                textColor: BtnText,
                                page: '/signup',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

