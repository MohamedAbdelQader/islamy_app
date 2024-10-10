import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/Screens/ahadeth%20details/ahadeth%20details%20screen.dart';
import 'package:islamy_app/Screens/ahadeth%20details/models/ahadeth.dart';

class AhadesTab extends StatefulWidget {
  @override
  State<AhadesTab> createState() => _AhadesTabState();
}

class _AhadesTabState extends State<AhadesTab> {
  @override
  void initState() {
    loadFile();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Image.asset("assets/images/ahadeth_image.png")),
        Divider(
          height: 0,
          thickness: 3,
        ),
        Text("Ahadeth",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold

          ),),
        Divider(
          height: 0,
          thickness: 3,
        ),
        Expanded(
            flex: 3,
            child: ahadethList.isEmpty? Center(child: CircularProgressIndicator(),) :
              ListView.separated(
              separatorBuilder:(context, index) => Container(
                child: Divider(
                  height: 0,
                  thickness: 3,
                ),
              ) ,
              itemCount: ahadethList.length,
              itemBuilder: (context, index) => InkWell(
                onTap: (){
                  Navigator.pushNamed(context, AhadethDetailsScreen.routeName,arguments: Hadeth(title: ahadethList[index].title, content:ahadethList[index].content));
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Text(ahadethList[index].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24,
                        ),),
                    ),
                  ],
                ),
              ),
        )
        )
      ],
    );
  }
  List<Hadeth>  ahadethList=[];
  loadFile() async {
    String fileAhadethContent = await rootBundle.loadString(
        "assets/files/ahadeth.txt");
    List<String> ahadesSeperate=fileAhadethContent.split("#");
    for(int i=0;i<ahadesSeperate.length;i++){
      List<String> ahadesLines= ahadesSeperate[i].trim().split("\n");
      String hadethTitle= ahadesLines[0];
      ahadesLines.removeAt(0);
      String hadethContent= ahadesLines.join(" ");
      ahadethList.add(Hadeth(title: hadethTitle,content: hadethContent));

    }
    setState(() {

    });
    print(ahadethList.length);

  }

}
