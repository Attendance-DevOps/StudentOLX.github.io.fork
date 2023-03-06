import 'package:flutter/material.dart';
import 'package:olx_student_app/main.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Categories/categoriesItems.dart';
import 'package:olx_student_app/screens/loadingScreen/loadingScreen.dart';

/// Categories will the following items in it:
/// Stationary, Electronics And Accessories, CLothings, Books, Sport Items
class Categories extends StatelessWidget {
  Categories({super.key});
  @override
  Widget build(BuildContext context) {
    ValueNotifier currTheme = MyApp.currentTheme;
    var size = MediaQuery.of(context).size;
    return ValueListenableBuilder(
        valueListenable: currTheme,
        builder: (context, value, _) {
          return FutureBuilder(
              future: categoryPage(value, size, context),
              builder: (context, snapshot) {
                /// Future done with no errors
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

Future<Widget> categoryPage(value, size, context) async {
  return Scaffold(
    appBar: CategoriesItems.categoryAppBar(size, value, context),
    body: CategoriesItems.categoryPage(size, value, context),
  );
}
