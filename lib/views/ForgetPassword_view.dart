
import 'package:flutter/material.dart';
import 'package:my_nots/componentes/TopPage.dart';
import '../Responsive/UiComponanets/InfoWidget.dart';



class ForgetpasswordView extends StatelessWidget {
  const ForgetpasswordView ({super.key});

  @override
  Widget build(BuildContext context) {
    return Infowidget(builder: (context, deviceInfo) {
      return Scaffold(
        body: TopPage(  ispressed: true,),
      );
    });
  }
}
