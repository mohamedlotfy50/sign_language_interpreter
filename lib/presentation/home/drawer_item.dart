import 'package:flutter/material.dart';

class DrawerItem{
  final String title,route;
  final Widget page;
  //VoidCallback? onClicked;
  DrawerItem( {required this.page,required this.route,required this.title,});
}