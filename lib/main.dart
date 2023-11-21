import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/model/constant.dart';
import 'package:flutterapp/screens/Home-Screen.dart';


import 'model/course.dart';



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

class CourseScreen extends StatefulWidget {
  CourseScreen({required this.course});

  late final Course course;

  @override
  _CourseScreenState createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kbackgroundcolor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.hardEdge,
                alignment: Alignment.bottomRight,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                        gradient: widget.course.background,
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: SafeArea(
                      bottom: false,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10.0),
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                    child: Image.asset(
                                        'logos/${widget.course.logo}'),
                                  ),
                                  SizedBox(width: 20.0),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          widget.course.courseSubtitle,
                                          style: kLargeTittleStyle.copyWith(
                                              color: Colors.white70),
                                        ),
                                        Text(
                                          widget.course.courseTitle,
                                          style: kTittleStyle.copyWith(
                                              color: Colors.white54),
                                        )
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      width: 36,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(12.0),
                                        color: kprimarylabelcolor
                                            .withOpacity(0.8),
                                      ),
                                      child: Icon(Icons.close,
                                          color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 28.0),
                            Expanded(
                              child: Image.asset(
                                'illustration/${widget.course.illustration}',
                                fit: BoxFit.cover,
                                alignment: Alignment.topCenter,
                                width: MediaQuery.of(context).size.width,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 28.0),
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 12.5,
                        bottom: 13.5,
                        left: 20.5,
                        right: 14.5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: kprimarylabelcolor,
                            blurRadius: 16.0,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      width: 50.0,
                      height: 50.0,
                      child: Image.asset('icons/icon-play.png'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 12,
                      left: 28,
                      right: 28,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: CircleAvatar(
                              child: Icon(
                                Platform.isAndroid
                                    ? Icons.people
                                    : CupertinoIcons.group_solid,
                                color: Colors.white,
                              ),
                              radius: 21,
                              backgroundColor: kbackgroundcolor,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: kbackgroundcolor,
                            borderRadius: BorderRadius.circular(29.0),
                          ),
      ),
    ]
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
