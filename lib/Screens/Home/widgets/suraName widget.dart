import 'package:flutter/material.dart';
import 'package:islamy_app/Screens/quran%20details/quran%20details%20screen.dart';
import 'package:islamy_app/style/app_style.dart';

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
                fontWeight: FontWeight.bold,
                color: AppStyle.isDark?Colors.white:Colors.black,

              ),),
          ),
          Container(
            height: 35,
            width: 3,
            decoration: BoxDecoration(
                color: AppStyle.isDark?Color(0xFFFACC1D):Theme.of(context).primaryColor
            ),
      
          ),
          Expanded(
            child: Text(suraNumber.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
              fontSize: 20,
            fontWeight: FontWeight.bold,
                  color: AppStyle.isDark?Colors.white:Colors.black,
                )
            ),
          )
        ],
      ),
    );

  }
}
