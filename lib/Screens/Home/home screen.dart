import 'package:flutter/material.dart';
import 'package:islamy_app/Screens/Home/tabs/ahades%20tab.dart';
import 'package:islamy_app/Screens/Home/tabs/athkartab.dart';
import 'package:islamy_app/Screens/Home/tabs/quran%20tab.dart';
import 'package:islamy_app/Screens/Home/tabs/radio%20tab.dart';
import 'package:islamy_app/Screens/Home/tabs/sebha%20tab.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "home";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
  List<Widget> tabs =[
    QuranTab(),
    AhadesTab(),
    SebhaTab(),
    Athkartab(),
    RadioTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/background.png"),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islami"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              selectedIndex=index;

            });
          },
          currentIndex: selectedIndex,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: ImageIcon(
                AssetImage("assets/images/moshaf_icon.png"),
              ),
              label: "Quran",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,

              icon: ImageIcon(
                AssetImage("assets/images/Path 1.png"),
              ),
              label: "Ahadeth",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,

              icon: ImageIcon(
                AssetImage("assets/images/sebha.png"),
              ),
              label: "Sebha",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,

              icon: ImageIcon(
                AssetImage("assets/images/sebha.png"),
              ),
              label: "Athkar",
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,

              icon: ImageIcon(
                AssetImage("assets/images/radio.png"),
              ),
              label: "Radio",
            ),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}
