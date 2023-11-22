import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/model/course.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../card/Continuewatchingcard.dart';
import '../component/Certificate_Viewer.dart';
import '../component/list/Continue-Watching-List.dart';
import '../model/constant.dart';

class ContinueWatchingScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      backdropEnabled: true,
      borderRadius:BorderRadius.only(
        topLeft: Radius.circular(34),
      ),
      color: kbackgroundcolor,
      boxShadow: [
        BoxShadow(color: kshadowcolor,offset: Offset(0,-12),blurRadius: 32),
      ],
      minHeight: 85,
      maxHeight: MediaQuery.of(context).size.height * 0.75,
      panel: 
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child:
          Padding(
            padding: EdgeInsets.only(top:12.0,bottom: 16.0),
            child:Container(
              width:42,
              height: 4.0,
              decoration: BoxDecoration(
                color:Color(0xFFC5CBD6),
                borderRadius: BorderRadius.circular(2.0)
              ),
            )
          ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Text("Continue Watching",
            style:kLargeTittleStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical:32.0),
            child: ContinueWatchingList(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.0),
            child: Text("Certificates",
              style:kLargeTittleStyle,
            ),
          ),
          Expanded
            (child: CertificateViewer()),
        ],
      ),
    );
  }
}






