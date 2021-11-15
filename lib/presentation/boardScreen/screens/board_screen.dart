import 'dart:ui';
import 'package:sign_language_interpreter/asset_locations.dart';
import 'package:sign_language_interpreter/boardScreen/widgets/Slide_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoardScreen extends StatefulWidget {
  const BoardScreen({Key? key}) : super(key: key);

  @override
  _BoardScreenState createState() => _BoardScreenState();
}

class _BoardScreenState extends State<BoardScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  final List<SlideItem> slidePages = [
    SlideItem(
        imagePath: AssetLocations.translation,
        title: 'Translate',
        text:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Morbi quis commodo odio aenean sed. Augue lacus viverra vitae congue eu.'),
    SlideItem(
        imagePath: AssetLocations.learn,
        title: 'Learn',
        text:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Morbi quis commodo odio aenean sed. Augue lacus viverra vitae congue eu.'),
    SlideItem(
        imagePath: AssetLocations.communication,
        title: 'Communicate',
        text:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Morbi quis commodo odio aenean sed. Augue lacus viverra vitae congue eu.'),
  ];
  int curretIndex = 0;
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
                  TextButton(
                    child: Text(
                      "SKIP",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFFA9746),
                          fontWeight: FontWeight.normal),
                    ),
                    onPressed: () {
                      setState(() {
                        curretIndex = slidePages.length - 1;
                        _pageController.animateToPage(curretIndex,
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      });
                    },
                  ),
                ],
              ),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (value) {
                    setState(() {
                      curretIndex = value;
                    });
                  },
                  itemCount: slidePages.length,
                  itemBuilder: (ctx, i) => slidePages[i],
                ),
              ),
              Container(
                height: 15,
                margin: EdgeInsets.symmetric(vertical: 20),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return AnimatedContainer(
                      margin: EdgeInsets.only(right: 10),
                      duration: Duration(milliseconds: 300),
                      width: curretIndex == index ? 50 : 15,
                      decoration: BoxDecoration(
                        color: curretIndex == index
                            ? Color(0xFF448CF2)
                            : Color(0xFFE1EDFD),
                        borderRadius: curretIndex == index
                            ? BorderRadius.circular(12)
                            : BorderRadius.circular(50),
                      ),
                    );
                  },
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          if (curretIndex < slidePages.length - 1) {
                            curretIndex++;
                            _pageController.animateToPage(curretIndex,
                                duration: Duration(milliseconds: 300),
                                curve: Curves.easeInOut);
                          }
                        });
                      },
                      child: Text(
                        curretIndex == slidePages.length - 1
                            ? "GET STARTED"
                            : "NEXT",
                        style: TextStyle(fontSize: 18, color: Colors.white),
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
