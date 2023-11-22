import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/constant.dart';

class SearchFieldWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Expanded(child: Padding(
      padding: const EdgeInsets.only(left:8.0,
          right: 33),
      child: Container
        (
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color:kprimarylabelcolor,
                offset: Offset(0,8),
                blurRadius: 16,
              )
            ]
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            cursorColor: Colors.blue,
            decoration: InputDecoration(
              icon:Icon(Icons.search,color: Colors.black,size: 20.0,),
              border: InputBorder.none,
              hintText: "search for courses",
              hintStyle: kSearchPlaceholderStyle,
            ),
            style: kSearchPlaceholderStyle,
            onChanged: (newText){
              print("newtext");
            },
          ),
        ),
      ),
    ),
    );
  }
}