import 'package:flutter/material.dart';
import 'package:olx_student_app/main.dart';
import 'package:olx_student_app/screens/loadingScreen/loadingScreen.dart';
import 'homeItems/homeItems.dart';

/// Home Button Page of Bottom nav bar.
/// It contains a search bar, College/school location of user with filter button so that user can buy or sell products at different places.

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    ValueNotifier currTheme = MyApp.currentTheme;

    /// Listening to the currentTheme of app
    return ValueListenableBuilder(
        valueListenable: currTheme,
        builder: (context, value, _) {
          /// taking size of screen
          var size = MediaQuery.of(context).size;
          return FutureBuilder(

              /// taking homePage function as future value which contains data of homepage function
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
                  /// Returning loading screen when program needs to wait while loading the next Screen
                  return const LoadingScreen();
                }
              });
        });
  }
}

/// homePage function return homePage when clicking on homebutton of bottom nav bar
Future<Widget> homePage(size, value, context) async {
  return Scaffold(
    /// homePage appBar which contains search bar
    appBar: HomeItems.homePagebar(size, value, context),
    /// homepage body
    body: HomeItems.homePage(size, value, context),
  );
}
