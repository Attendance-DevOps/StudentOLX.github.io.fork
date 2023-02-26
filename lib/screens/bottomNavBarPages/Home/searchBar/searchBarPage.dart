import 'package:flutter/material.dart';
import 'package:olx_student_app/main.dart';
import 'searchBarPageItems.dart';

class SearchBarPage extends StatelessWidget {
  const SearchBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier currTheme = MyApp.currentTheme;
    return ValueListenableBuilder(
        valueListenable: currTheme,
        builder: (context, value, _) {
          var size = MediaQuery.of(context).size;
          return Scaffold(
            body: SearchBarPageItems.searchBarPage(size, value, context),
          );
        });
  }
}