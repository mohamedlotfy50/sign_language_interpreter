// import 'package:flutter/material.dart';
//
// class RoundButton extends StatelessWidget {
//   final String text,page;
//   const RoundButton({
//     Key? key,
//     required this.text,
//     // required this.press,
//     required this.page,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(top:20, bottom:20),
//       height: MediaQuery.of(context).size.height * 0.06,
//       width: MediaQuery.of(context).size.width * 0.3,
//       child: ElevatedButton(
//         onPressed: () => {
//         Navigator.pushNamed(context,page),
//         },
//         child: Text(
//           text,
//           style: const TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 17,
//             letterSpacing: 1.5,
//           ),
//         ),
//         style: TextButton.styleFrom(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(20),
//           ),
//         ),
//       ),
//     );
//   }
// }
