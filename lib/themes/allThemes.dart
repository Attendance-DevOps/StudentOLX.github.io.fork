/// basic layout of Theme

import 'package:flutter/material.dart';
import 'package:olx_student_app/themes/allSplashScreens.dart';
import 'package:olx_student_app/themes/allthemes/darkTheme.dart';
import 'package:olx_student_app/themes/allthemes/lightTheme.dart';
import 'package:olx_student_app/themes/style.dart';

class AllThemes {
  ThemeStructure themeStructure;
  Scaffold splashScreen;
  String themeName;
  int themeId;
  AllThemes(this.themeStructure, this.splashScreen,this.themeName, this.themeId);
}

var theme1 = AllThemes(DarkTheme.darkTheme, AllSplashScreens.darkThemeSplashScreen,'Dark Theme', 1);
var theme2 = AllThemes(LightTheme.lightTheme, AllSplashScreens.lightThemeSplashScreen,'Light Theme', 2);
var allthemes = [theme1, theme2];
