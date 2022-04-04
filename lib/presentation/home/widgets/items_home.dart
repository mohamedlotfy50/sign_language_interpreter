import 'package:flutter/material.dart';

class DetailItems extends StatelessWidget {
  final String imgPath,title;
  DetailItems({Key? key, required this.imgPath, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
          margin: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10), // Image border
                  child: SizedBox.fromSize(
                    child: Image.asset(imgPath, fit: BoxFit.cover, width: size.width*0.6,height: size.height*0.2,),
                  ),
                ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(10),),
                      alignment: Alignment.center,
                      height: size.height * 0.2,
                      width: size.width * 0.6,
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                    ),
              ],
            ),
          ),
      );
  }
}
