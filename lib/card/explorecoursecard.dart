import 'package:flutter/cupertino.dart';

import '../model/constant.dart';
import '../model/course.dart';

class explorecoursecard extends StatelessWidget {
  explorecoursecard({required this.course});
  final Course course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right:10.0),
      child: ClipRRect(
        borderRadius:BorderRadius.circular(41.0),
        child: Container(
            height:120,
            width:280,
            decoration: BoxDecoration(gradient: course.background),
            child:Padding(
                padding: EdgeInsets.only(left:22),

                child:Row(
                  children: [
                    Expanded(
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Hero(
                            tag: course.courseSubtitle,
                            child: Text(course.courseSubtitle,
                              style:kCardTitleStyle,),
                          ),
                          SizedBox(height:6),
                          Hero(
                            tag: course.courseTitle,
                            child: Text(course.courseTitle,
                              style:kCardTitleStyle,),
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Hero(

                          child: Image.asset('illustration/${course.illustration}',fit: BoxFit.cover,
                            height: 100,),
                          tag: course.illustration,
                        )
                      ],
                    )
                  ],

                )
            )
        ),
      ),
    );
  }
}