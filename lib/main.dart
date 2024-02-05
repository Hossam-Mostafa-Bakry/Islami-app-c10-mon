// 1- read data from assets files
// 2- localization
// 3- dark theme
// 4- state management (provider)

import 'package:flutter/material.dart';
import 'package:islami_app_c10_mon/config/application_theme_manager.dart';
import 'package:islami_app_c10_mon/layout/layout_view.dart';
import 'package:islami_app_c10_mon/moduls/splash/pages/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami App',
      debugShowCheckedModeBanner: false,
      theme: ApplicationThemeManager.lightThemeData,
      themeMode: ThemeMode.light,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => const LayoutView()
      },
    );
  }
}
