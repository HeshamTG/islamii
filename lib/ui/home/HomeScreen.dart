import 'package:flutter/material.dart';
import 'package:islamii/ui/MyThemeData.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamii/ui/home/Hadeth/HadethTap.dart';
import 'package:islamii/ui/home/Quraan/QuraanTap.dart';
import 'package:islamii/ui/home/Radio/RadioTap.dart';
import 'package:islamii/ui/home/Sebha/SebhaTap.dart';

import 'Settings/settingsTap.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(MyThemeData.isDarkEnabled
                ? 'assets/images/home_dark_background.png'
                : 'assets/images/bg3.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_name),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/radio.png')),
                  label: AppLocalizations.of(context)!.radio,
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha_blue.png')),
                  label: AppLocalizations.of(context)!.tasebh,
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/hadeth.png')),
                  label: AppLocalizations.of(context)!.hadeth,
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/quran.png')),
                  label: AppLocalizations.of(context)!.quran,
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                  backgroundColor: Theme.of(context).primaryColor),
            ]),
        body: taps[selectedIndex],
      ),
    );
  }

  List<Widget> taps = [
    RadioTap(),
    SebhaTap(),
    HadethTap(),
    QuraanTap(),
    SettingsTap(),
  ];
}
