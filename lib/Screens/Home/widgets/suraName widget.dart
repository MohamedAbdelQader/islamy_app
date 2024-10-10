import 'package:flutter/material.dart';
import 'package:islamy_app/Screens/quran%20details/quran%20details%20screen.dart';

class SuraNameWidget extends StatelessWidget {
  final String suraName;
  final int suraNumber;
  final int index;
  const SuraNameWidget({required this.suraName,required this.suraNumber,required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, QuranDetailsScreen.routeName,arguments:QuranArgs(suraName, index),);
      },
      child: Row(
        children: [
          Expanded(
            child: Text(suraName,
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 20,
                fontWeight: FontWeight.bold
            ),),
          ),
          Container(
            height: 35,
            width: 3,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary
            ),
      
          ),
          Expanded(
            child: Text(suraNumber.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
              fontSize: 20,
            fontWeight: FontWeight.bold)
            ),
          )
        ],
      ),
    );

  }
}
