import 'package:flutter/material.dart';
import 'package:islamy_app/Screens/Home/home%20screen.dart';
import 'package:islamy_app/Screens/ahadeth%20details/ahadeth%20details%20screen.dart';
import 'package:islamy_app/Screens/quran%20details/quran%20details%20screen.dart';

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
      theme: ThemeData(
        cardTheme: CardTheme(
          surfaceTintColor: Colors.white,
          color: Colors.white,
          elevation: 15,
          margin: EdgeInsets.all(20)
        ),
     dividerTheme:DividerThemeData(color: Color(0xFFB7935F)) ,
     bottomNavigationBarTheme: BottomNavigationBarThemeData(
       selectedItemColor:Colors.black ,
       selectedIconTheme: IconThemeData(
         color: Colors.black,
         size: 35

       ),
       unselectedIconTheme: IconThemeData(
         color: Colors.white,
         size: 35
       )
     ),
        appBarTheme:  AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black
          )

        ),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.transparent,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange,
        primary: Color(0xFFB7935F),
          secondary: Color(0xFFB7935F).withOpacity(0.57),
          onPrimary: Colors.white,
          onSecondary: Colors.black
        )
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        QuranDetailsScreen.routeName:(_)=>QuranDetailsScreen(),
        AhadethDetailsScreen.routeName:(_)=>AhadethDetailsScreen(),

      },

    );
  }
}

