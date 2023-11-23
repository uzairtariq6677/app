import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/model/constant.dart';
import 'package:flutterapp/model/course.dart';

class    Completecoursecard extends StatelessWidget {
  Completecoursecard({required this.course});
  final Course course;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 20.0,
                right: 20),
            child: Container(

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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(41.0),
                child: Container(
                  height: 140,
                  width: 260,
                  child: Stack(
                    children: [
                      Row(

                        children: [
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Image.asset('illustration/${course.illustration}',
                                  fit: BoxFit.cover,
                                  height: 140,),

                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(32),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Image.asset('icons/icon-play.png',),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: kshadowcolor, offset: Offset(0, 4), blurRadius: 16.0,),
              ],
            ),
            padding: EdgeInsets.only(top:12.5,
                bottom: 13.5,
                left:20.5,
                right:14.5),
          ),
        ],
      ),
    );
  }
}