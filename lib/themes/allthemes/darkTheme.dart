import 'package:flutter/material.dart';
import 'package:olx_student_app/themes/style.dart';
class DarkTheme {
  static ThemeStructure darkTheme = ThemeStructure(
      categoryButtonStyle: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor:
              MaterialStateProperty.all(const Color.fromARGB(255, 32, 31, 31))),
      categoryPageDecoration:
          const BoxDecoration(color: Color.fromARGB(255, 32, 31, 31)),
      categoryTextStyle: const TextStyle(
        color: Colors.white,
      ),
      categoryContainerColor: const Color.fromARGB(255, 51, 50, 50),
      themeData: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 19, 19, 18),
        textTheme: const TextTheme(),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 19, 19, 18),
          elevation: 0,
          shape: Border(
              bottom: BorderSide(
                  color: Color.fromARGB(255, 95, 94, 92), width: 0.5)),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: const Color.fromARGB(255, 19, 19, 18),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(0.5)),
      ),
      categoryIconColor: Colors.white);
}
