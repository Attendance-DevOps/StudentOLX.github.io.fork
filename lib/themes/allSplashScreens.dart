import 'package:flutter/material.dart';
import 'package:olx_student_app/themes/Colors.dart';

class AllSplashScreens {
  static Scaffold darkThemeSplashScreen = Scaffold(
    backgroundColor: Color.fromARGB(255, 19, 19, 18),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(
            child: Text(
          "Student OLX",
          style: TextStyle(color: Colors.white),
        ))
      ],
    ),
  );
  static Scaffold lightThemeSplashScreen = Scaffold(
    backgroundColor: Color.fromARGB(255, 245, 246, 247),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(
            child: Text(
          "Student OLX",
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ))
      ],
    ),
  );
}
