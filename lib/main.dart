import 'package:flutter/material.dart';
import 'package:islamy_app/Screens/Home/home%20screen.dart';
import 'package:islamy_app/Screens/ahadeth%20details/ahadeth%20details%20screen.dart';
import 'package:islamy_app/Screens/quran%20details/quran%20details%20screen.dart';
import 'package:islamy_app/style/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:AppStyle.lightTheme,
      darkTheme: AppStyle.darkTheme,
      themeMode: AppStyle.isDark
          ? ThemeMode.dark
          : ThemeMode.light,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        QuranDetailsScreen.routeName:(_)=>QuranDetailsScreen(),
        AhadethDetailsScreen.routeName:(_)=>AhadethDetailsScreen(),

      },

    );
  }
}

