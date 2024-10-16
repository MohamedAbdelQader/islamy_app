import 'package:flutter/material.dart';
import 'package:islamy_app/style/app_style.dart';

class Quranchapter extends StatelessWidget {
  String chapter;
  int index;
  Quranchapter({required this.chapter,required this.index});

  @override
  Widget build(BuildContext context) {
    return Text("$chapter (${index+1})"

      ,
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.center,
      style:
      TextStyle(
        color: AppStyle.isDark?Color(0xFFFACC1D):Colors.black,
        fontSize: 20,


      ),);
  }
}
