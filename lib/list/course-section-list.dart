import 'package:flutter/cupertino.dart';

import '../card/course-section-card.dart';
import '../model/constant.dart';
import '../model/course.dart';

class courseSectionList extends StatelessWidget {
  List<Widget>courseSectionWidget(){
    List<Widget>Cards=[];
    for(var course in courseSections){
      Cards.add(Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: courseSectionscard(course: course,),
      ),
      );
    }
    Cards.add(Padding(padding: EdgeInsets.only(top:12),
      child: Text("No more section to view, look \n for more in our courses",
        style: kCardTitleStyle,
        textAlign: TextAlign.center,),
    ),
    );
    return Cards;

  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
          children: courseSectionWidget(),
        )
    );
  }
}