import 'package:flutter/material.dart';
import 'package:olx_student_app/main.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Profile/profilePageItems.dart';
import 'package:olx_student_app/screens/loadingScreen/loadingScreen.dart';

/// Profile Page with
/// profile Section, Orders, Purchases, Help and Support, Select Language, Wish List (When product is available ,user will be notified)

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier currTheme = MyApp.currentTheme;
    return ValueListenableBuilder(
        valueListenable: currTheme,
        builder: (context, value, _) {
          var size = MediaQuery.of(context).size;

          return FutureBuilder(
              future: profilePage(size, value, context),
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

Future<Widget> profilePage(size, value, context) async {
  return Scaffold(
    appBar: ProfilePageItems.profileAppBar(size,value,context),
    body: ProfilePageItems.profilePage(size, value, context),
  );
}
