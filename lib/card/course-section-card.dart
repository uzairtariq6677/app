import 'package:flutter/cupertino.dart';
import 'package:flutterapp/model/constant.dart';
import 'package:flutterapp/model/course.dart';

class courseSectionscard extends StatelessWidget {

  courseSectionscard({required this.course})

  {}final Course course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.0),

      child: Container(
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(41),
            gradient: course.background,
            boxShadow: [
              BoxShadow(
                color:course.background.colors[0].withOpacity(0.3),
                blurRadius: 30,
                offset: Offset(0,12),

              ),
              BoxShadow(
                color:course.background.colors[1].withOpacity(0.3),
                blurRadius: 30,
                offset: Offset(0,12),

              ),
            ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(41.0),
          child: Padding(
            padding: EdgeInsets.only(left:32),
            child:Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('illustration/${course.illustration}',fit: BoxFit.cover,
                    )
                  ],
                ),
                Row(
                  children:[
                    Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(course.courseSubtitle,style: kCardTitleStyle,),
                            SizedBox(height:6.0,),
                            Text(course.courseTitle,style: kCardTitleStyle,),


                          ],
                        )
                    ),
                    Spacer()
                  ],
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}