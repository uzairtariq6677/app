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
    title: "Courses",
    background: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.topRight,
      colors: [
        Color(0xFFFF7043),
        Color(0xFFFF7043),
      ],
    ),
    icon: Icon(
      Icons.book_outlined,
      color: Colors.white,
    ),
  ),
  SidebarItem(
    title: "Billing",
    background: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.topRight,
      colors: [
        Color(0xFFFFEB3B),
        Color(0xFFFFEB3B),
      ],
    ),
    icon: Icon(
      Icons.add_card,
      color: Colors.white,
    ),
  ),
  SidebarItem(
    title: "Setting",
    background: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.topRight,
      colors: [
        Color(0xFF40C4FF),
        Color(0xFF0076FF),
      ],
    ),
    icon: Icon(
      Icons.settings,
      color: Colors.white,
    ),
  ),
];
