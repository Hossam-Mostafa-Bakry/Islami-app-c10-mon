import 'package:flutter/material.dart';
import 'package:islami_app_c10_mon/moduls/hadeth/pages/hadeth_view.dart';
import 'package:islami_app_c10_mon/moduls/quran/pages/quran_view.dart';
import 'package:islami_app_c10_mon/moduls/radio/pages/radio_view.dart';
import 'package:islami_app_c10_mon/moduls/settings/pages/settings_view.dart';
import 'package:islami_app_c10_mon/moduls/tasbeh/pages/tasbeh_view.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = "layout";

  // unVersioned files

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;
  List<Widget> screens = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/main_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text("إسلامي"),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/quran_icn.png"),
                ),
                label: "Quran"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/hadeth_icn.png"),
                ),
                label: "Hadeth"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/sebha_icn.png"),
                ),
                label: "Tasbeh"),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/radio_icn.png"),
                ),
                label: "Radio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
      ),
    );
  }
}
