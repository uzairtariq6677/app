import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/card/Complete-courses-card.dart';
import 'package:flutterapp/component/Certificate_Viewer.dart';
import 'package:flutterapp/component/list/Completed-course-List.dart';
import 'package:flutterapp/model/constant.dart';
import 'package:flutterapp/model/course.dart';

class profile_screen extends StatelessWidget {

final List<String>Badges=[
  'badge-01.png',
  'badge-02.png',
  'badge-03.png',
  'badge-04.png',
];

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      backgroundColor: kbackgroundcolor,
        body: SingleChildScrollView(

          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: kbackgroundcolor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(34.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: kshadowcolor,
                      offset: Offset(0,12),
                      blurRadius: 32.0,

                    ),
                  ],
                ),
                child: SafeArea(
                  bottom: false,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top:24,
                          bottom:32,
                          left:20,
                          right:20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[RawMaterialButton
                            (
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            constraints: BoxConstraints(
                              minWidth: 40,
                              maxWidth: 40,
                              maxHeight: 24.0,

                            ),
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            onPressed: (){
                              Navigator.of(context).pop();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.arrow_back,color:ksecondaylabelcolour,)],
                            ),
                          ),
                            Text("Profile",style: kCardTitleStyle,),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                                boxShadow:[
                                  BoxShadow(
                                    color: kshadowcolor,
                                    offset: Offset(0,12),
                                    blurRadius: 32,
                                  )
                                ]
                              ),
                              child: Icon(
                                Platform.isAndroid ? Icons.settings : CupertinoIcons.settings_solid,
                                color:ksecondaylabelcolour
                              ),
                            )
                        ],
                      ),
                ),
                      Padding(
                        padding:EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children:[
                            Container(
                              child: Padding(
                                padding: EdgeInsets.all(6.0),
                                child: Container(
                                  padding: EdgeInsets.all(6.0),
                                  child:CircleAvatar(
                                    backgroundImage: AssetImage('images/download.jpg'),
                                    radius: 30.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: kbackgroundcolor,
                                    borderRadius: BorderRadius.circular(42.0)
                                  ),
                                ),
                              ),
                              height: 84,
                              width:84,
                              decoration: BoxDecoration(
                                gradient: RadialGradient(
                                  colors: [
                                    Color(0XFF00AEFF),
                                    Color(0XFF0076FF),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(42.0)
                              ),
                            ),
                            SizedBox(width:16.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sai Kambampati",style: kTittleStyle,),
                                SizedBox(height: 8.0,),
                                Text("Flutter Developer",style: kTittleStyle,),


                              ],
                            )

                          ]
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top:28,
                      bottom:16,),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Badges",style: kTitleHeadlineStyle,
                                  ),
                                  Row(
                                    children: [
                                      Text("See all",style: ksearchplaceholderstyle,),

                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 16.0,),
                      Container(
                        height: 112,
                        child:ListView.builder(
                          padding: EdgeInsets.only(bottom: 28),
                          scrollDirection: Axis.horizontal,
                          itemCount: Badges.length,
                          itemBuilder: (context,index){
                            return Container(
                              padding: EdgeInsets.only(left:20,right: 20),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: kshadowcolor.withOpacity(0.1),
                                    offset: Offset(0,12),
                                    blurRadius: 18,

                                  )
                                ]
                              ),
                              child: Image.asset('badges/${Badges[index]}'),

                            );

                          },
                        )
                      )
                  ],

                ),

              ),
        ),
              Padding(
                padding:EdgeInsets.only(
                    left:20,
                top:32,
                bottom:12,
                right:20,
                ),
                child:Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("certificate", style:kTitleHeadlineStyle),
                          Row(
                            children: [
                              Text("see all",style: kTitleHeadlineStyle,),
                              Icon(Icons.chevron_right,color:ksecondaylabelcolour),

                            ],
                          ),
                        ],
                    )
                  ],
                )

              ),
              CertificateViewer(),
              Padding(
                  padding:EdgeInsets.only(
                    left:20,

                    bottom:12,
                    right:20,
                  ),
                  child:Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Completed Courses", style:kTitleHeadlineStyle),
                          Row(
                            children: [
                              Text("see all",style: kTitleHeadlineStyle,),
                              Icon(Icons.chevron_right,color:ksecondaylabelcolour),

                            ],
                          ),
                        ],
                      )
                    ],
                  ),

              ),
              CompletedCourseList(
              ),
SizedBox(height: 28.0),
          ],
        ),
    ),
    );
  }
}
