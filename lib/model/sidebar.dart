import 'package:flutter/material.dart';

class SidebarItem {
  SidebarItem({this.title  = '', this.background , this.icon });
  String title;
  LinearGradient? background;
  Icon? icon;
}

var sidebarItems = [
  SidebarItem(
    title: "Home",
    background: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.topRight,
      colors: [
        Color(0xff00AEFF),
        Color(0xFF0076FF),
      ],
    ),
    icon: Icon(
      Icons.home,
      color: Colors.white,
    ),
  ),
  SidebarItem(
    title: "Another Item",
    background: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.topRight,
      colors: [
        Color(0xff00AEFF),
        Color(0xFF0076FF),
      ],
    ),
    icon: Icon(
      Icons.star,
      color: Colors.yellow,
    ),
  ),
  SidebarItem(
    title: "Yet Another Item",
    background: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.topRight,
      colors: [
        Color(0xff00AEFF),
        Color(0xFF0076FF),
      ],
    ),
    icon: Icon(
      Icons.access_alarm,
      color: Colors.red,
    ),
  ),
];
