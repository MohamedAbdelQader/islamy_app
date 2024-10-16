import 'package:flutter/material.dart';

class SelectedItem extends StatelessWidget {
  String selected;
  SelectedItem({required this.selected});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(selected,style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor

        ),),
        Icon(Icons.check,size: 30,color: Theme.of(context).primaryColor,)
      ],
    );
  }
}
