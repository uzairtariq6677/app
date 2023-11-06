import 'package:flutter/material.dart';
import 'package:flutterapp/model/constant.dart';
import 'package:flutterapp/model/sidebar.dart';
import 'package:flutterapp/screens/sidebar_screen.dart';
import 'package:flutter/src/material/button.dart';

import 'component/recent_couse_card.dart';
import 'component/sidebar_row.dart';
import 'model/course.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Create an instance of SidebarItem

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: kbackgroundcolor,
          child: SafeArea(
            child: Column(
              children: [
                HomeScreenNavbBar(),
                recentcoursecard(course: recentCourses[0]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class HomeScreenNavbBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         sidebarbutton(),

          Icon(Icons.notifications, color: kprimarylabelcolor
          ),
          CircleAvatar(radius:18,backgroundImage:AssetImage('images/download.jpg') ,)

        ],
      ),
    );
  }
}

class sidebarbutton extends StatelessWidget {
  const sidebarbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: (){
        print("sidebar button pressed");
      },
      materialTapTargetSize:MaterialTapTargetSize.shrinkWrap ,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      constraints: BoxConstraints(
        maxWidth: 40,
        maxHeight: 40,
      ),
      child:Container(
        decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color:kshadowcolor,
              offset: Offset(0,8),
              blurRadius:16,
            )
          ]

    ),
        child:Image.asset('icons/icon-sidebar.png',
        color: Colors.redAccent,),
        padding: EdgeInsets.symmetric(
          horizontal:12.0,
          vertical:14.0,
         ),
      )
    );
  }
}
