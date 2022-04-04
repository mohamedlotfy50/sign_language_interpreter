import 'package:flutter/material.dart';

class SettingItem{
  final String id;
  final String title,iconSvg;
  final IconData? iconTrail;
  final String? route;
  final TextEditingController? controller;
   bool isSelect;
  // final String? subTitle;
  SettingItem( { this.id='', this.route,required this.iconSvg , this.iconTrail, this.isSelect=false,required this.title, this.controller});
}

class AcountItem{
  final String id;
  final String iconSvg;
  final IconData? iconTrail;
  bool isSelect;
  AcountItem({this.id='',required this.iconSvg , this.iconTrail,required this.isSelect,});
}