import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamii/ui/home/Hadeth/HadethTitleWidget.dart';

import 'Hadeth.dart';

class HadethTap extends StatefulWidget {
  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Expanded(
          child: Image.asset('assets/images/hadith_header.png'),
          flex: 1,
        ),
        Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
            ))),
            child: Text(
              AppLocalizations.of(context)!.hadeth,
              style: TextStyle(fontSize: 24),
            )),
        Expanded(
          flex: 3,
          child: allAhadeth.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                  itemBuilder: (context, index) {
                    return HadethTitleWidget(allAhadeth[index]);
                  },
                  separatorBuilder: (context, index) => Container(
                        color: Theme.of(context).primaryColor,
                        width: double.infinity,
                        height: 2,
                        margin: EdgeInsets.symmetric(horizontal: 64),
                      ),
                  itemCount: allAhadeth.length),
        ),
      ],
    );
  }

  List<Hadeth> allAhadeth = [];

  void loadHadethFile() async {
    String fileContent = await rootBundle.loadString('assets/file/ahadeth.txt');
    // parse
    List<String> hadethList = fileContent.trim().split('#');
    for (int i = 0; i < hadethList.length; i++) {
      String singleHadeth = hadethList[i];
      List<String> hadethLines = singleHadeth.trim().split('\n');
      String title = hadethLines[0]; // first line
      hadethLines.remove(0);
      String content = hadethLines.join('\n');
      Hadeth hadeth = Hadeth(title, content);
      allAhadeth.add(hadeth);
      setState(() {});
    }
  }
}
