import 'package:flutter/material.dart';
import 'package:olx_student_app/themes/Colors.dart';

class AppThemes {
  // static const themeIds = [1, 2];

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: DarkThemeColors.scaffoldBackGroundColor,
    appBarTheme:
        AppBarTheme(backgroundColor: DarkThemeColors.scaffoldBackGroundColor),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: DarkThemeColors.scaffoldBackGroundColor,
        selectedItemColor: DarkThemeColors.selectedItemColor,
        unselectedItemColor: DarkThemeColors.unselectedItemColor),
  );

  static ThemeData lightTheme = ThemeData(
      // scaffoldBackgroundColor: LightThemeColors.scaffoldBackGroundColor,
      );
}
