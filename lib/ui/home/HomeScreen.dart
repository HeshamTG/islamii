import 'package:flutter/material.dart';
import 'package:islamii/ui/home/Hadeth/HadethTap.dart';
import 'package:islamii/ui/home/Quraan/QuraanTap.dart';
import 'package:islamii/ui/home/Radio/RadioTap.dart';
import 'package:islamii/ui/home/Sebha/SebhaTap.dart';

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
            image: AssetImage('assets/images/bg3.png'), fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Islami"),
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
                  label: 'Radio',
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha_blue.png')),
                  label: 'Sebha',
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/hadeth.png')),
                  label: 'Hadeth',
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/quran.png')),
                  label: 'Quran',
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
  ];
}
