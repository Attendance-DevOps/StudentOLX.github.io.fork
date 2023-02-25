import 'package:flutter/material.dart';
import 'package:olx_student_app/screens/homepage/homepageItems/bottomnavbar/bottomNavBar.dart';
import 'package:olx_student_app/screens/homepage/homepageItems/bottomnavbar/bottomNavBaritem.dart';
import 'package:olx_student_app/screens/homepage/homepageItems/bottomnavbar/bottomNavigationBarProvider.dart';
import 'package:olx_student_app/screens/homepage/homepageItems/homePageItems.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    BottomNavigationBarThemeData bottomNavigationBarThemeData =
        Theme.of(context).bottomNavigationBarTheme;

    // Colors of bottomNavBar
    Color? backgroundColor = bottomNavigationBarThemeData.backgroundColor;
    Color? selectedItemColor = bottomNavigationBarThemeData.selectedItemColor;
    Color? unselectedItemColor =
        bottomNavigationBarThemeData.unselectedItemColor;
    final np = Provider.of<BottomNavigationBarProvider>(context);
    return Scaffold(
        body: np.items[np.currentIndex].widget,
        bottomNavigationBar: DotNavigationBar(
          itemPadding: const EdgeInsets.all(8),
          backgroundColor: backgroundColor,
          selectedItemColor: selectedItemColor,
          unselectedItemColor: unselectedItemColor,
          size: size,
          currentIndex: np.currentIndex,
          marginR: const EdgeInsets.only(left: 10, right: 10),
          paddingR: const EdgeInsets.all(8),
          onTap: (i) {
            np.currentIndex = i;
          },
          items: np.items
              .map((e) => DotNavigationBarItem(icon: Icon(e.iconData)))
              .toList(),
        ));
  }
}
