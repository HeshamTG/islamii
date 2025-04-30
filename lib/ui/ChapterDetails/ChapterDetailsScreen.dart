import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/ui/ChapterDetails/VerseWidget.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const String routeName = 'chapter-details';

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  // const ChapterDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    ChapterDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg3.png'), fit: BoxFit.fill)),
      child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Card(
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return VerseWidget(verses[index], index);
                    },
                    itemCount: verses.length,
                  ),
                )),
    );
  }

  List<String> verses = [];

  void loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/file/${index + 1}.txt');
    verses = fileContent.split("\n");
    setState(() {});
  }
}

class ChapterDetailsArgs {
  String title;
  int index;

  ChapterDetailsArgs(this.title, this.index);
}
