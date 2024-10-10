import 'package:flutter/material.dart';

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
          color: Colors.black,
          fontSize: 25,
        ),),
    );
  }
}
