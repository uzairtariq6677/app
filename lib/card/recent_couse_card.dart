import 'package:flutter/material.dart';

import '../model/constant.dart';
import '../model/course.dart';
class recentcoursecard extends StatelessWidget {
  recentcoursecard({required this.course});
  Course course;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding:  EdgeInsets.only(top: 20.0,
          left: 15),
          child: Container(
            width: 240,
            height: 240,
            decoration: BoxDecoration(
              gradient: course.background,
              borderRadius: BorderRadius.circular(41.0),
              boxShadow: [
                BoxShadow(
                    color: course.background.colors[0].withOpacity(0.3),
                    offset: Offset(0,7),
                    blurRadius: 0.30),
                BoxShadow(
                    color: course.background.colors[1].withOpacity(0.3),
                    offset: Offset(0,7),
                    blurRadius: 0.30),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 32, left: 32, right: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.courseSubtitle,
                        style: kCardTitleStyle,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(course.courseTitle, style: kCardTitleStyle)
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Image.asset('illustration/${course.illustration}',
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 42.0),
          child: Container(
            child: Image.asset('logos/${course.logo}'),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                    color: kshadowcolor, offset: Offset(0, 4), blurRadius: 16.0),
              ],
            ),
            padding: EdgeInsets.all(4),
          ),
        ),
      ],
    );
  }
}