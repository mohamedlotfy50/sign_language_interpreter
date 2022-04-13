import 'package:flutter/material.dart';

class DetailItems extends StatelessWidget {
  final String imgPath, title;
  final void Function()? onPressed;
  const DetailItems(
      {Key? key, required this.imgPath, required this.title, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        height: size.height / 3.6,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imgPath),
            fit: BoxFit.cover,
            colorFilter:
                const ColorFilter.mode(Colors.black38, BlendMode.darken),
          ),
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
    );
  }
}
