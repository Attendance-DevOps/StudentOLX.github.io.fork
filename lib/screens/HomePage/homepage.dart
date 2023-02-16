import 'package:flutter/material.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Categories/categories.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Profile/profile.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Recent/recent.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Sell/sell.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Trending/trending.dart';
import 'package:olx_student_app/screens/homepage/homepageItems/bottomnavbar/bottomNavBar.dart';
import 'package:olx_student_app/screens/homepage/homepageItems/bottomnavbar/bottomNavBaritem.dart';
import 'homepageItems/homePageItems.dart';
// import 'bottomNa';
// import 'package:dot_navigation_bar/dot_navigation_bar.dart';
// import 'package:theme_provider/theme_provider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedTab = 0;
  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = i;
    });
  }

  var pages = [
    const Trending(),
    const Categories(),
    const Sell(),
    const Recent(),
    const Profile()
  ];
  @override
  Widget build(BuildContext context) {
    // var controller = ThemeProvider.controllerOf(context);
    return Scaffold(
        extendBody: true,
        body: pages[_selectedTab],
        appBar: HomePageItems.HomePageAppBar(),
        bottomNavigationBar: DotNavigationBar(
          bottomNavigationBarThemedata:
              Theme.of(context).bottomNavigationBarTheme,
          // selectedItemColor: Colors.white,
          margin: const EdgeInsets.all(0),
          currentIndex: _selectedTab,
          // dotIndicatorColor: const Color.fromARGB(255, 255, 255, 255),
          marginR: const EdgeInsets.only(left: 10, right: 10),
          // unselectedItemColor:
          //     const Color.fromARGB(255, 187, 177, 180).withOpacity(0.5),
          onTap: _handleIndexChanged,
          items: [
            DotNavigationBarItem(icon: const Icon(Icons.arrow_outward_rounded)),
            DotNavigationBarItem(
                icon: const Icon(Icons.auto_awesome_mosaic_rounded)),
            DotNavigationBarItem(icon: const Icon(Icons.add)),
            DotNavigationBarItem(
                icon: const Icon(Icons.access_time_filled_sharp)),
            DotNavigationBarItem(icon: const Icon(Icons.account_circle_sharp)),
          ],
        ));
  }
}
