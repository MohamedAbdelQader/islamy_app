import 'package:flutter/material.dart';
import 'package:islamy_app/Screens/Home/tabs/settings/widgets/selected_item.dart';
import 'package:islamy_app/Screens/Home/tabs/settings/widgets/unselected_item.dart';

class CustomBottomsheet extends StatelessWidget {
  String selected;
  String Unselected;
  CustomBottomsheet({required this.selected,required this.Unselected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SelectedItem(selected:selected,),
          SizedBox(height: 20,),
          UnselectedItem(unSelecred: Unselected,)
        ],
      ),
    );
  }
}
