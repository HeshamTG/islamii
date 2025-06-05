import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamii/ui/ChapterDetails/ChapterDetailsScreen.dart';
import 'package:islamii/ui/HadethDetails/HadethDetailsScreen.dart';
import 'package:islamii/ui/MyThemeData.dart';
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
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: const [Locale('en'), Locale('ar')],
      locale: Locale('ar'),
      // home: HomeScreen.routeName,
    );
  }
}