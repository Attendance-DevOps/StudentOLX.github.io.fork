import 'package:flutter/material.dart';

class LightThemeColors {
  static final scaffoldBackGroundColor = Color.fromARGB(255, 255, 255, 255);
  static final unSelectedTabBarColor = Color.fromARGB(255, 0, 0, 0);
  static final selectedTabBarColor = Color.fromARGB(255, 0, 0, 0);
  static final ButtonPressed = Color.fromARGB(255, 230, 226, 226);
  static final TabIndicatorColor = Color.fromARGB(255, 50, 232, 5);
  static final formFieldTextColor = Color.fromARGB(255, 0, 0, 0);
  static final formFieldIconColor = Color.fromARGB(255, 55, 54, 54);

  static final decoration = InputDecoration(
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
      width: 1, //<-- SEE HERE
      color: Color.fromARGB(255, 42, 41, 41),
    )),
    disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
      width: 3, //<-- SEE HERE
      color: Color.fromARGB(255, 0, 0, 0),
    )),
    errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
      width: 3, //<-- SEE HERE
      color: Color.fromARGB(255, 255, 0, 0),
    )),
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
      width: 3, //<-- SEE HERE
      color: Color.fromARGB(255, 0, 0, 0),
    )),
    hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
    labelStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
  );
}

class DarkThemeColors {
  static final scaffoldBackGroundColor = Color.fromARGB(255, 18, 18, 18);
  static final unSelectedTabBarColor = Color.fromARGB(255, 0, 0, 0);
  static final selectedTabBarColor = Color.fromARGB(255, 182, 176, 176);
  static final ButtonPressed = Color.fromARGB(255, 53, 51, 51);
  static final TabIndicatorColor = Color.fromARGB(255, 50, 232, 5);
  static final formFieldTextColor = Color.fromARGB(255, 255, 255, 255);
  static final formFieldIconColor = Color.fromARGB(255, 255, 255, 255);

  static final decoration = InputDecoration(
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
      width: 3, //<-- SEE HERE
      color: Color.fromARGB(255, 255, 255, 255),
    )),
    disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
      width: 3, //<-- SEE HERE
      color: Color.fromARGB(255, 255, 255, 255),
    )),
    errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
      width: 3, //<-- SEE HERE
      color: Color.fromARGB(255, 255, 0, 0),
    )),
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
      width: 3, //<-- SEE HERE
      color: Color.fromARGB(255, 136, 76, 76),
    )),
    hintStyle: TextStyle(color: Colors.white),
    labelStyle: TextStyle(color: Colors.white),
  );
}
