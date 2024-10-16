import 'package:flutter/material.dart';

import '../../../style/app_style.dart';

class HadethChapter extends StatelessWidget {
  String content;
  HadethChapter({required this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Text("$content "

        ,
        textDirection: TextDirection.rtl,
        textAlign: TextAlign.center,
        style:
        TextStyle(
          color: AppStyle.isDark?Color(0xFFFACC1D):Colors.black,
          fontSize: 25,

        ),),
    );
  }
}
