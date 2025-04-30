import 'package:flutter/material.dart';
import 'package:islamii/ui/ChapterDetails/ChapterDetailsScreen.dart';
import 'package:islamii/ui/HadethDetails/HadethDetailsScreen.dart';
import 'package:islamii/ui/home/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetailsScreen.routeName: (_) => ChapterDetailsScreen(),
        HadethDetailsScreen.routName: (_) => HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
      title: 'Flutter Demo',
      theme: ThemeData(
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
          secondary: Color(0xff87B7935F),
          onPrimary: Colors.white,
          onSecondary: Colors.black,
        ),
        useMaterial3: true,
      ),
      // home: HomeScreen.routeName,
    );
  }
}
