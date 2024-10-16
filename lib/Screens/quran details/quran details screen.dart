import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/Screens/quran%20details/widgets/QuranChapter.dart';
import 'package:islamy_app/style/app_style.dart';

class QuranArgs {
  String Name;
  int index;

  QuranArgs(this.Name, this.index);
}

class QuranDetailsScreen extends StatefulWidget {
  static const routeName = "Quran Details";

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    QuranArgs args = ModalRoute
        .of(context)
        ?.settings
        .arguments as QuranArgs;
    if (suraLines.isEmpty) {
      loadFile(args.index);
    }
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppStyle.isDark?"assets/images/bgDark.png":"assets/images/background.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
            appBar: AppBar(
              title: Text(args.Name),
            ),
            body:Card(
              child:  suraLines.isEmpty
                  ? Center(child: CircularProgressIndicator(),) :
              ListView.separated(
                  itemBuilder: (context, index) => Quranchapter(
                      chapter: suraLines[index],
                      index: index),
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: suraLines.length),
            )
    )
    ,
    );


  }

  List<String> suraLines = [];

  loadFile(int index) async {
    String fileContent = await rootBundle.loadString(
        "assets/files/${index + 1}.txt");
    print(fileContent);
    suraLines = fileContent.split("\n");
    setState(() {

    });
  }
}
