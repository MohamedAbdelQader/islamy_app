import 'package:flutter/material.dart';
import 'package:islamy_app/Screens/Home/tabs/settings/widgets/custom_bottomsheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Language",style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              showModalBottomSheet(
                  context: context,
                  builder: (context)=>CustomBottomsheet(selected: "English",Unselected: "العربيه",));
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              decoration: BoxDecoration(
                border: Border.all(color:Theme.of(context).primaryColor,width: 2,),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text("English",style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  )),
            ),
          ),
          SizedBox(height: 30,),
          Text("Theme",style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              showModalBottomSheet(context: context,
                  builder: (context)=> CustomBottomsheet(selected: "Dark", Unselected: "light"));
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              decoration: BoxDecoration(
                  border: Border.all(color:Theme.of(context).primaryColor,width: 2,),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Text("Dark",style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              )),
            ),
          ),
        ],
      ),
    );
  }
}
