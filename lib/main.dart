import 'package:flutter/material.dart';
import 'package:flutterapp/model/constant.dart';
import 'package:flutterapp/screens/Home-Screen.dart';
import 'package:flutterapp/screens/sidebar_screen.dart';
import 'component/explorecourselist.dart';
import 'component/home-screen-navbar.dart';
import 'component/list/recent-course-list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
    );
  }
}


