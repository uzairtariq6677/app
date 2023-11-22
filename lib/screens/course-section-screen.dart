import 'package:flutter/cupertino.dart';

import '../list/course-section-list.dart';
import '../model/constant.dart';

class CourseSectionScreen  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kbackgroundcolor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(14),
        ),

      ),

      child:Column(
        children: [
          Container(
            padding: EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: kbackgroundcolor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(43),
                  bottomLeft: Radius.circular(43)
              ),
              boxShadow: [
                BoxShadow(color: kshadowcolor,
                  offset: Offset(0,12),
                  blurRadius: 32.0,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Course Section",style: kTitleHeadlineStyle,),

                SizedBox(height: 5.0),
                Text("12 section",style: kTittleStyle,),
              ],

            ),
          ),
          courseSectionList(),
          SizedBox(height:32),
        ],
      ),
    );
  }

}