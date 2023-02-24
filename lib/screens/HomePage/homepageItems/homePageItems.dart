import 'package:flutter/material.dart';
import 'package:olx_student_app/themes/themeDialogBox.dart';

class HomePageItems {
  static AppBar HomePageAppBar() {
    return AppBar(
      centerTitle: true,
      title: const Text("Home Page"),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: ThemeDialogBox(),
        )
      ],
    );
  }
}
