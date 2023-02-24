import 'package:flutter/material.dart';
import 'package:olx_student_app/main.dart';
import 'package:olx_student_app/themes/allThemes.dart';

/// Theme Dialog Box is stateful Widget return the DialogBox in a GestureDector which is in the AppBar of homePage
class ThemeDialogBox extends StatefulWidget {
  const ThemeDialogBox({super.key});
  @override
  State<ThemeDialogBox> createState() => _ThemeDialogBoxState();
}

class _ThemeDialogBoxState extends State<ThemeDialogBox> {
  @override
  Widget build(BuildContext context) {
    ValueNotifier currTheme = MyApp.currentTheme;
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
                          Navigator.of(context).pop(allthemes[0]);
                        },
                        child: Text(allthemes[0].themeName)),
                    SimpleDialogOption(
                      onPressed: () {
                        Navigator.of(context).pop(allthemes[1]);
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
                  MyApp.currentTheme.value = value;
                }
              }));
        },
        child: ValueListenableBuilder(
          valueListenable: currTheme,
          builder: (context, value, _) {
            var size = MediaQuery.of(context).size;
            return Container(
              height: 70,
              child: Row(
                children: [
                  const SizedBox(
                    width: 18,
                  ),
                  const Icon(
                    Icons.change_circle,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "${value.themeName}",
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
