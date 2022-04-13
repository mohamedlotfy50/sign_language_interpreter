import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  final String title, subTitle;
  final void Function()? onPressed;
  const BookTile(
      {Key? key, required this.title, this.subTitle = '', this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            gradient: LinearGradient(
                stops: const [0.02, 0.02],
                colors: [theme.primaryColor, Colors.white]),
            boxShadow: [
              BoxShadow(
                  offset: Offset(3, 5), blurRadius: 3, color: Colors.black12),
            ],
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: screenSize.width - 85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(subTitle),
                ],
              ),
            ),
            Icon(Icons.picture_as_pdf)
          ],
        ),
      ),
    );
  }
}
