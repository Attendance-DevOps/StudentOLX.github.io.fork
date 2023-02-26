import 'package:flutter/material.dart';
import 'package:olx_student_app/main.dart';
import 'package:olx_student_app/screens/loadingScreen/loadingScreen.dart';
import 'homeItems/homeItems.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    ValueNotifier currTheme = MyApp.currentTheme;
    return ValueListenableBuilder(
        valueListenable: currTheme,
        builder: (context, value, _) {
          var size = MediaQuery.of(context).size;

          return FutureBuilder(
              future: homePage(size, value, context),
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

Future<Widget> homePage(size, value, context) async {
  return Scaffold(
    body: HomeItems.homePage(size, value, context),
  );
}