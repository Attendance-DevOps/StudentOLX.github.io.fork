import 'package:flutter/material.dart';
import 'package:olx_student_app/main.dart';
import 'package:olx_student_app/themes/allThemes.dart';

/// Theme Dialog Box is stateful Widget return the DialogBox in a GestureDector which is in the AppBar of homePage
class ThemeDialogBox extends StatefulWidget {
  const ThemeDialogBox({super.key});
  @override
  State<ThemeDialogBox> createState() => _ThemeDialogBoxState();
}

ThemeData currentTheme = allthemes[0].themeType;

class _ThemeDialogBoxState extends State<ThemeDialogBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return SimpleDialog(
                  title: const Text('Your Themes'),
                  children: <Widget>[
                    SimpleDialogOption(
                        onPressed: () {
                          Navigator.of(context).pop(allthemes[0].themeType);
                        },
                        child: Text(allthemes[0].themeName)),
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.of(context).pop(allthemes[1].themeType);
                      },
                      child: Text(allthemes[1].themeName),
                    ),
                  ],
                );
              }).then((value) => setState(() {
                if (value == null) {
                  /// Takes care of the situation when no theme is selected.
                  return;
                } else {
                  /// Providing the selectedTheme Value to MyApp Theme Section in main.dart
                  // MyApp.currentTheme.value = value;
                  
                }
              }));
        },
        child: const Icon(Icons.table_bar));
  }
}

ThemeData themeChange() {
  return currentTheme;
}
