import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color primaryColor = Color(0xFFB7935F);
  static ThemeData lightThemeData = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Color(0xFF242424),
        ),
        titleTextStyle: TextStyle(
          fontFamily: "El Messiri",
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xFF242424),
        )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(color: Color(0xFF242424), size: 28),
      selectedItemColor: Color(0xFF242424),
      selectedLabelStyle: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Color(0xFF242424),
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 22,
      ),
      unselectedItemColor: Colors.white,
      unselectedLabelStyle: TextStyle(
        fontFamily: "El Messiri",
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: primaryColor,
      thickness: 1.5,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          fontFamily: "El Messiri", fontWeight: FontWeight.bold, fontSize: 30),
      bodyLarge: TextStyle(
          fontFamily: "El Messiri", fontWeight: FontWeight.w600, fontSize: 25),
      bodyMedium: TextStyle(
          fontFamily: "El Messiri",
          fontWeight: FontWeight.normal,
          fontSize: 25),
      bodySmall: TextStyle(
          fontFamily: "El Messiri", fontWeight: FontWeight.w400, fontSize: 20),
    ),
  );
}
