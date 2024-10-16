import 'package:flutter/material.dart';

class UnselectedItem extends StatelessWidget {
  String unSelecred;
   UnselectedItem({required this.unSelecred});

  @override
  Widget build(BuildContext context) {
    return Text(unSelecred,style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,

    ),);
  }
}
