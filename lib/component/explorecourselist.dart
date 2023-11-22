import 'package:flutter/cupertino.dart';

import '../model/course.dart';
import '../card/explorecoursecard.dart';

class Explorecourselist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child:ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: exploreCourses.length,
        itemBuilder:(context,index){

          return Padding(
            padding: EdgeInsets.only(left:index==0? 10:15.0),
            child: explorecoursecard(course:exploreCourses[index]),
          );
        },

      ),
    );
  }
}