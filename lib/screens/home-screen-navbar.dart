import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/component/seachfieldwidget.dart';
import 'package:flutterapp/component/sidebarbutton.dart';
import 'package:flutterapp/screens/profile-screen.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../model/constant.dart';

class HomeScreenNavbBar extends StatelessWidget {
  final Function()? triggerAnimation;

  HomeScreenNavbBar({required this.triggerAnimation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(triggerAnimation: triggerAnimation),
          SearchFieldWidget(),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.notifications,
              color: kprimarylabelcolor,
            ),
          ),
          GestureDetector(
            onTap:(){
              Navigator.of(context).push(
                MaterialPageRoute(builder:(context)=>profile_screen()));
            },
            child: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('images/download.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}

