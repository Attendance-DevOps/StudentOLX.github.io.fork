import 'package:flutter/material.dart';
import 'package:olx_student_app/themes/allSplashScreens.dart';
import 'package:olx_student_app/themes/style.dart';
class AllThemes {
  ThemeData themeType;
  Scaffold splashScreen;
  String themeName;
  int themeId;
  AllThemes(this.themeType, this.splashScreen,this.themeName, this.themeId);
}

var theme1 = AllThemes(AppThemes.darkTheme, AllSplashScreens.darkThemeSplashScreen,'Dark Theme', 1);
var theme2 = AllThemes(AppThemes.lightTheme, AllSplashScreens.lightThemeSplashScreen,'Light Theme', 2);
var allthemes = [theme1, theme2];
