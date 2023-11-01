import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}


class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home:Scaffold(

    body:Center(

      child:Row(
        children: [
                Container(
                 width:42,
          height:42,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                    gradient:LinearGradient(
                        begin:Alignment.topLeft,
                      end:Alignment.topRight,
                      colors:[
                        Color(0xff00AEFF),
                        Color(0xFF0076FF),
                      ]
                    )
              ),
              child: Icon(Icons.home,
                  color:Colors.white),
                ),
          SizedBox(width:10),
          Container(

            child:Text("Home",style: TextStyle(fontSize: 16,
              fontWeight:FontWeight.w800,
                color:Color(0xFF242629),

            ),
            ),
          ),
        ],
      ),

    )
    ),



);
}
}

