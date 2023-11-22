import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../model/constant.dart';

class SidebarButton extends StatelessWidget {
  final Function()? triggerAnimation;

  SidebarButton({required this.triggerAnimation});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: triggerAnimation,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      constraints: BoxConstraints(
        maxWidth: 40,
        maxHeight: 40,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: kshadowcolor,
              offset: Offset(0, 8),
              blurRadius: 16,
            )
          ],
        ),
        child: Image.asset(
          'icons/icon-sidebar.png',
          color: Colors.redAccent,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 14.0,
        ),
      ),
    );
  }
}
