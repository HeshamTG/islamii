import 'package:flutter/material.dart';

class MyThemeData {
  static bool isDarkEnabled = false;
  static const Color lightPrimary = Color(0xffb7935f);
  static const Color darkPrimary = Color(0xff141A2E);
  static const Color darkSecondry = Color(0xffFAcc1d);
  static ThemeData lightTheme = ThemeData(
      textTheme: TextTheme(
          titleMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
          headlineSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          bodyMedium: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Colors.black,
          )),
      cardTheme: CardTheme(
        color: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 28,
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            size: 32,
          )),
      colorScheme: ColorScheme.fromSeed(
        seedColor: Color(0xffB7935F),
        primary: Color(0xffB7935F),
        secondary: Color(0xffB7935F),
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        background: Colors.white,
      ),
      useMaterial3: true,
      dividerColor: lightPrimary,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white,
      ));
  static ThemeData darkTheme = ThemeData(
      textTheme: TextTheme(
          titleMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          headlineSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          bodyMedium: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Colors.white,
          )),
      cardTheme: CardTheme(
        color: darkPrimary,
        surfaceTintColor: Colors.transparent,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 28,
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: darkSecondry,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            size: 32,
          )),
      colorScheme: ColorScheme.fromSeed(
        seedColor: darkPrimary,
        primary: darkPrimary,
        secondary: darkSecondry,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        background: darkPrimary,
      ),
      useMaterial3: true,
      dividerColor: darkSecondry,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkPrimary,
      ));
}
