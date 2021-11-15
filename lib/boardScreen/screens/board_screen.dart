import 'dart:ui';
import 'package:sign_language_interpreter/model/slide.dart';
import 'package:sign_language_interpreter/boardScreen/widgets/Slide_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoardScreen extends StatefulWidget {
  const BoardScreen({Key? key}) : super(key: key);

  @override
  _BoardScreenState createState() => _BoardScreenState();
}

class _BoardScreenState extends State<BoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    child: Text(
                      "SKIP",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Expanded(
                child: PageView.builder(
                  itemCount: slideList.length,
                  itemBuilder: (ctx, i)=> SlideItem(i),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 60,
                    // width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blueAccent,
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: null,
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
                  ],
                ),
              ),
          ),
        );
  }
}
