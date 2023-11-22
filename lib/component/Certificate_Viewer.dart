import 'dart:math';

import 'package:flutter/cupertino.dart';

class CertificateViewer extends StatefulWidget {


  @override
  State<CertificateViewer> createState() => _CertificateViewerState();
}

class _CertificateViewerState extends State<CertificateViewer> {
  final List<String> certificatePaths=[
    'certificate/certificate-01.png',
    'certificate/certificate-02.png',
    'certificate/certificate-03.png',

  ];
  late Widget certificateViewer;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    List<Widget> imagechildren=[];
    certificatePaths.reversed.toList().asMap().forEach((index, certificate) {
      int angleDegree;
      if(index==certificatePaths.length-1){
        angleDegree=0;
      }else{
        angleDegree=Random().nextInt(10)-5;
      }
      imagechildren.add(
        Transform.rotate(
          angle: angleDegree *(pi/180),
          child: Image.asset(certificate,
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );
    });
    certificateViewer=Stack(children:imagechildren,);

  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top:20),
      child:certificateViewer,

    );
  }
}