import 'package:flutter/material.dart';

abstract class AppStyle{
  static bool isDark=true;
  static  ThemeData lightTheme=ThemeData(
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
          foregroundColor: Colors.black,
          titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black
          )

      ),
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.transparent,

      colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
          primary: Color(0xFFB7935F),
          secondary: Color(0xFFB7935F).withOpacity(0.57),
          onPrimary: Colors.white,
          onSecondary: Colors.black
      )
  );
  static  ThemeData darkTheme=ThemeData(
      cardTheme: CardTheme(
          surfaceTintColor: Color(0xFF141A2E),
          color: Color(0xFF141A2E),
          elevation: 15,
          margin: EdgeInsets.all(20)
      ),
      dividerTheme:DividerThemeData(color: Color(0xFFFACC1D)) ,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor:Color(0xFFFACC1D) ,
          selectedIconTheme: IconThemeData(
              color: Color(0xFFFACC1D),
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
              color: Colors.white
          ),
        foregroundColor: Colors.white,

      ),
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrange,
          primary: Color(0xFF141A2E),
          secondary:Color(0xFF141A2E) .withOpacity(0.57),
          onPrimary: Colors.white,
          onSecondary: Colors.white
      )
  );
}