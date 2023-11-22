import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/main.dart';
import '../../model/course.dart';
import '../../card/recent_couse_card.dart';

class recentcourselist extends StatefulWidget {


  @override
  State<recentcourselist> createState() => _recentcourselistState();
}

class _recentcourselistState extends State<recentcourselist> {

  List<Container> indicator=[];
  int currentpage=0;
  Widget updateIndicators(){
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        recentCourses.map((course){
          var index=recentCourses.indexOf(course);
          return Container(
            height: 7.0,
            width: 7.0,
            margin: EdgeInsets.symmetric(horizontal: 6.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentpage==index? Color(0xFF0971FE) : Color(0xFFA5AEBD),
            ),
          );
        },
        ).toList()
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 320,
            width: double.infinity,
            child: PageView.builder(

              itemBuilder: (context,index){
                return GestureDetector(
                  onTap:(){
                    Navigator.push(context,MaterialPageRoute(
                    builder:(context)=>CourseScreen(course: recentCourses[index],),
                      fullscreenDialog: true,
                    ),);
                  },

                  child: Opacity(
                    opacity: currentpage==index ? 1.0:0.5,
                    child: recentcoursecard(course:recentCourses[index],
                    ),
                  ),
                );
              },
              itemCount: recentCourses.length,
              controller: PageController(initialPage: 0, viewportFraction: 0.63),
              onPageChanged: (index){
                setState(() {
                  currentpage=index;
                });

              }
              ,
            )
        ),
        updateIndicators(),
      ],
    );
  }
}