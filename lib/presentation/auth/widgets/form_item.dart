import 'package:flutter/material.dart';

// OutlineInputBorder textFieldBorder = OutlineInputBorder(
//     borderSide: BorderSide(
//       color: Colors.blue.withOpacity(0.5),
//   ),
// );

class TextContainer extends StatelessWidget {
  final Widget child;
  const TextContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: Colors.blueAccent, // set border color
            width: 2.0), // set border width
        borderRadius: BorderRadius.all(
            Radius.circular(10.0)), // set rounded corner radius
      ),
      child: child,
    );
  }
}
