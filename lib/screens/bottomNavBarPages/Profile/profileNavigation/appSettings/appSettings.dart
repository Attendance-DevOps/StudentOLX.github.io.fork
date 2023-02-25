import 'package:flutter/material.dart';
import 'package:olx_student_app/main.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Profile/profileNavigation/appSettings/appSettingsItems.dart';
import 'package:olx_student_app/screens/loadingScreen/loadingScreen.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier currTheme = MyApp.currentTheme;
    return ValueListenableBuilder(
        valueListenable: currTheme,
        builder: (context, value, _) {
          var size = MediaQuery.of(context).size;

          return FutureBuilder(
              future: appSettings(size, value, context),
              builder: (context, snapshot) {
                /// Future with no errors
                if (snapshot.connectionState == ConnectionState.done &&
                    !snapshot.hasError) {
                  final data = snapshot.data;
                  if (data == null) {
                    return Container(
                      child: const Text('Empty loaded'),
                    );
                  } else {
                    return data;
                  }
                } else if (snapshot.connectionState == ConnectionState.done &&
                    snapshot.hasError) {
                  return Text("The error ${snapshot.error} has occured");
                } else {
                  return const LoadingScreen();
                }
              });
        });
  }
}

Future<Widget> appSettings(size, value, context) async {
  return Scaffold(
    appBar: AppSettingsItems.AppSettingsAppBar(),
    body: AppSettingsItems.appSettingsPage(size, value, context),
  );
}
