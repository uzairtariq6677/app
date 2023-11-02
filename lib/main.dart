import 'package:flutter/material.dart';
import 'package:flutterapp/model/constant.dart';
import 'package:flutterapp/model/sidebar.dart';

import 'component/sidebar_row.dart';

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
        body: sidebarscreen(),
      ),
    );
  }
}

class sidebarscreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:ksidebargroundcolor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(34.0),

        ),
      ),
      height:MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width*0.85,
      padding:EdgeInsets.symmetric(
        vertical:20,
        horizontal: 25,
      ),
      child: Column(

        children: [
          CircleAvatar(
            backgroundImage:AssetImage('asset/image/about.png'),
            radius: 20.0,
          ),
          Center(
            child: SidebarRow(item: sidebarItems[2],
            ),
          ),
        ],
      ),
    );
  }
}

