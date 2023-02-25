import 'package:flutter/material.dart';
import 'package:olx_student_app/themes/themeDialogBox.dart';

class AppSettingsItems {
  static AppBar AppSettingsAppBar() {
    return AppBar(
      title: const Text('App Settings'),
    );
  }

  static Widget appSettingsPage(size, value, context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SafeArea(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: size.width,
            maxWidth: size.width,
          ),
          child: Column(
            children: [
              ThemeDialogBox()
              // ElevatedButton(onPressed: () {}, child: ThemeDialogBox())
            ],
          ),
        ),
      ),
    );
  }
}
