import 'package:flutter/material.dart';
import 'package:sign_language_interpreter/presentation/auth/widgets/TextField.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final IconData? ConIcon;
  const InputField({
    Key? key,
    required this.hintText,
    this.icon =Icons.vpn_key_rounded,
    this.ConIcon,
  }): super(key:key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child:TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Align(
            widthFactor: 2.0,
            heightFactor: 2.0,
            child: Icon(
              icon,
              size: 30,
            ),
          ),
          suffixIcon: Icon(
              ConIcon,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color: Colors.blueAccent, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.lightBlue, width: 2),
          ),
        ),
      ),
    );
  }
}
