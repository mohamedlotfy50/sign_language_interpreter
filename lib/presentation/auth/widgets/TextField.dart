import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final child;
  const TextFieldContainer({
    Key? key,
    this.child
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 15,top: 18,right: 15),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: child,
    );
  }
}
