import 'package:flutter/material.dart';
import 'package:olx_student_app/themes/Colors.dart';

class AllSplashScreens {
  static Scaffold darkThemeSplashScreen = Scaffold(
    backgroundColor: DarkThemeColors.scaffoldBackGroundColor,
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Center(child: 
        Text(
          "Student OLX",
          style: TextStyle(color: Colors.white),
        ))
      ],
    ),
  );
  static Scaffold lightThemeSplashScreen = Scaffold(
    backgroundColor: LightThemeColors.scaffoldBackGroundColor,
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [Center(child: 
        Text(
          "Student OLX",
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ))],
    ),
  );
}
