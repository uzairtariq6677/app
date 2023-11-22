import 'package:flutter/cupertino.dart';

import '../../card/Continuewatchingcard.dart';
import '../../model/course.dart';

class ContinueWatchingList extends StatefulWidget {


  @override
  State<ContinueWatchingList> createState() => _ContinueWatchingListState();
}

class _ContinueWatchingListState extends State<ContinueWatchingList> {
  List<Container> indicators=[];
  int currentpage=0;
  Widget UpdateIndicators(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: continueWatchingCourses.map((course)
      {
        var index=continueWatchingCourses.indexOf(course);
        return Container(
          width:7.0,
          margin: EdgeInsets.symmetric(horizontal: 6.0,),
          height:7.0,
          decoration: BoxDecoration(
            shape:BoxShape.circle,
            color: currentpage==index? Color(0XFF0971FE):Color(0XFFA6AEBD),

          ),
        );
      }).toList(),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          child: PageView.builder(
            itemBuilder: (context,index){
              return Opacity(
              opacity: currentpage==index? 1.0:0.5,
              child: ContinueWatchingcard(course: continueWatchingCourses[index],));
            },
            itemCount: continueWatchingCourses.length,
            onPageChanged: (index){
              setState(() {
                currentpage=index;
              });
            },
            controller: PageController(initialPage: 0, viewportFraction: 0.75),
          ),
        ),
        UpdateIndicators(),
      ],
    );
  }
}