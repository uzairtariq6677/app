import 'package:flutter/material.dart';
import 'package:flutterapp/model/constant.dart';

import '../model/sidebar.dart';

class SidebarRow extends StatelessWidget {
  final SidebarItem item;

  SidebarRow({required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 42,
          height: 42,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: item.background,
          ),
          child: item.icon,
        ),
        SizedBox(width: 10),
        Container(
          child: Text(
            item.title,
            style:kCardTitleStyle,
          ),
        ),
      ],
    );
  }
}
