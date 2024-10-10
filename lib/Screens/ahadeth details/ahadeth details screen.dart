import 'package:flutter/material.dart';
import 'package:islamy_app/Screens/ahadeth%20details/models/ahadeth.dart';
import 'package:islamy_app/Screens/ahadeth%20details/widgets/hadeth%20chapter.dart';

class AhadethDetailsScreen extends StatelessWidget {
static const routeName ="Ahadeth screen";
  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body:Card(
            child:  args.content.isEmpty
                ? Center(child: CircularProgressIndicator(),) :
            ListView.builder(
                itemBuilder: (context, index) => HadethChapter(
                    content: args.content,),
                itemCount: 1),
          )
      )
      ,
    );;
  }
}
