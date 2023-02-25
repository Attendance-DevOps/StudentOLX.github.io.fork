import 'package:flutter/material.dart';
import 'package:olx_student_app/themes/style.dart';

class LightTheme{
  static ThemeStructure lightTheme = ThemeStructure(
    categoryButtonStyle: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Color.fromARGB(255, 238, 235, 235))),
    categoryPageDecoration:
        const BoxDecoration(color: Color.fromARGB(255, 235, 232, 232)),
    categoryTextStyle: const TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
    ),
    categoryIconColor: Colors.black,
    categoryContainerColor: Colors.orange,
    themeData: ThemeData(
      scaffoldBackgroundColor: Color.fromARGB(255, 245, 246, 247),
    ));
}
