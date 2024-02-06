import 'package:flutter/material.dart';
import 'package:islami_app_c10_mon/moduls/hadeth/pages/hadeth_view.dart';

class HadethDetailsView extends StatelessWidget {
  static const String routeName = "HadethDetails";

  const HadethDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)?.settings.arguments as HadethDetailsData;

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
              Text(
                args.title,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium,
              ),
              const Divider(
                indent: 30,
                endIndent: 30,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Text(
                      args.content,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall!.copyWith(
                        height: 1.8,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
