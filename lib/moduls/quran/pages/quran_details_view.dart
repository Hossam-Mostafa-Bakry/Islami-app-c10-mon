import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c10_mon/moduls/quran/pages/quran_view.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "quranDetails";

  QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsData;

    // async function
    if (versesList.isEmpty) loadData(args.suraNumber);

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/main_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("إسلامي"),
        ),
        body: Container(
          width: mediaQuery.width,
          height: mediaQuery.height,
          margin: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 15,
            bottom: 60,
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          decoration: BoxDecoration(
            color: const Color(0xFFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سورة ${args.suraName}",
                    style: theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.play_circle_rounded,
                    size: 28,
                  ),
                ],
              ),
              const Divider(
                indent: 30,
                endIndent: 30,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    " {${index + 1}} ${versesList[index]}",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall!.copyWith(
                      height: 1.6,
                    ),
                  ),
                  itemCount: versesList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // sync vs async
  Future<void> loadData(String filename) async {
    String content = await rootBundle.loadString("assets/files/$filename.txt");
    versesList = content.split("\n");
    setState(() {});
  }
}
