import 'package:flutter/material.dart';

import '../component/sidebar_row.dart';
import '../model/constant.dart';
import '../model/sidebar.dart';
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
      child: SafeArea(
        child: Column(

          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage:AssetImage('images/download.jpg'),
                  radius: 15.0,
                ),
                SizedBox(width: 14,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("sai", style: kTittleStyle,),
                    SizedBox(height: 4,),

                    Text("lisence end on 21 jan, 2021",style: kTitleHeadlineStyle,),
                  ],


                )
              ],
            ),
            SizedBox(height:MediaQuery.of(context).size.height *0.08,),
            SidebarRow(item: sidebarItems[0],
            ),
            SizedBox(height: 36.0,),
            SidebarRow(item: sidebarItems[1],
            ),
            SizedBox(height: 36.0,),
            SidebarRow(item: sidebarItems[2],
            ),
            SizedBox(height: 36.0,),
            SidebarRow(item: sidebarItems[3],
            ),
            SizedBox(height: 36.0,),
            Spacer(),
            Row(
              children: [
                Image.asset('images/logo.png',width:25,),
                SizedBox(width:12.0,),
                Text("LOGOUT",style: kTittleStyle,),
              ],

            )
          ],
        ),
      ),
    );
  }
}