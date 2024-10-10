import 'package:flutter/material.dart';

import '../../Radio/quran liveStream.dart';

class RadioTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
            child: Image.asset("assets/images/radio_image.png")),
        Expanded(child: Text("اذاعة القران الكريم",
        style: TextStyle(
          fontSize: 30,
        ),),),
        Expanded(
          flex: 6,
          child: Container(
            child: QuranRadioEgypt(),
          ),
        )
      ],
    );
  }
}
