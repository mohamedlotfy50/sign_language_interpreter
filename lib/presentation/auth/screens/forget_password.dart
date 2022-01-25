import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sign_language_interpreter/asset_locations.dart';
import 'package:sign_language_interpreter/constrant.dart';
import 'package:sign_language_interpreter/presentation//auth/widgets/clip.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/TextField.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/auth_button.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/input_field.dart';
import '../../../asset_locations.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

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
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Forget Password',
                  style: TextStyle(
                    color: HeaderText,
                    fontSize: 44,
                  ),
                ),
                SizedBox(height: 8,),
                Text(
                  " Confirm your email and we will \n send the instructions.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: HeaderText,
                    fontSize: 20,
                  ),),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.65,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: TextFieldContainer(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                           Image.asset(AseetForget.forget),
                            InputField(
                              hintText: ' Email',
                              icon: Icons.email,
                            ),
                            RoundButton(
                              text: "Send",
                              color: BtnColor,
                              textColor: BtnText,
                              page: '/otp',

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
