import 'package:flutter/material.dart';

class HadethView extends StatelessWidget {
  const HadethView({super.key});

  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hadeth View",
        style: TextStyle(
            fontFamily: "El Messiri",
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
    );
  }
}
