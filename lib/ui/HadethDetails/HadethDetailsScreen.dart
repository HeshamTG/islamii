import 'package:flutter/material.dart';

import '../MyThemeData.dart';
import '../home/Hadeth/Hadeth.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routName = 'hadeth-screen';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyThemeData.isDarkEnabled
                  ? 'assets/images/home_dark_background.png'
                  : 'assets/images/bg3.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Center(
            child: Expanded(
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
                child: SingleChildScrollView(
                  child: Text(
                    textAlign: TextAlign.center,
                    args.content,
                      style: Theme.of(context).textTheme.bodyMedium),
                ),
              ),
            ),
          )),
    );
  }
}
