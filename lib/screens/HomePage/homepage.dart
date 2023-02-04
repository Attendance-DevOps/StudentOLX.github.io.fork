/* 
Contains: 
  - Sticky Bottom Navigation Bar
  - Greet Wish element
  - 
*/

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:olx_server/constants/themeData/themeData.dart';
import 'package:olx_server/screens/AddProduct/addproduct.dart';
import 'package:olx_server/screens/HomePage/SearchBar/searchBar.dart';
import 'package:olx_server/screens/HomePage/SettingsOptions/settingsButton.dart';
import 'package:olx_server/screens/ProfilePage/profilePage.dart';
import 'package:olx_server/screens/Recommendations/R_screens/recommendation_home_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int _selectedIndex = 0;
  String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return "Good Morning";
    }
    if (hour < 17) {
      return "Good Afternoon";
    }
    return "Good Evening";
  }

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  // --------------------------------------------ALL SCREENS
  final Pages = [
    const RecommendationHomeScreen(),
    const AddProduct(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        // -----------------------------------------APP BAR
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: theme.isDarkMode == false
              ? const Color.fromARGB(255, 255, 255, 255)
              : const Color.fromARGB(255, 0, 0, 0),
          title: Text(
            greeting(),
            style: TextStyle(
                color: theme.isDarkMode == false
                    ? const Color.fromARGB(255, 0, 0, 0)
                    : const Color.fromARGB(255, 255, 255, 255)),
          ),
          actions: const [
            SearchBarButton(),
            SettingsButton(),
          ],
        ),
        // ---------------------------------------BODY
        body: Pages[_selectedIndex],
        // ---------------------------------------BOTTOM NAVIGATION BAR
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          height: 47,
          // ----------- Bottom navigation buttons
          items: <Widget>[
            Icon(
              Icons.home,
              size: 30,
              color: theme.isDarkMode == false
                  ? const Color.fromARGB(255, 0, 0, 0)
                  : const Color.fromARGB(255, 255, 255, 255),
            ),
            Icon(
              Icons.add,
              size: 30,
              color: theme.isDarkMode == false
                  ? const Color.fromARGB(255, 0, 0, 0)
                  : const Color.fromARGB(255, 255, 255, 255),
            ),
            Icon(
              Icons.man,
              size: 30,
              color: theme.isDarkMode == false
                  ? const Color.fromARGB(255, 0, 0, 0)
                  : const Color.fromARGB(255, 255, 255, 255),
            ),
            // Icon(Icons.shop, size: 30),
          ],
          backgroundColor: theme.isDarkMode == false
              ? Color.fromARGB(255, 19, 202, 244)
              : Color.fromARGB(255, 55, 56, 56),
          color: theme.isDarkMode == false
              ? const Color.fromARGB(255, 255, 255, 255)
              : const Color.fromARGB(255, 0, 0, 0),
          buttonBackgroundColor: theme.isDarkMode == false
              ? const Color.fromARGB(255, 255, 255, 255)
              : const Color.fromARGB(255, 0, 0, 0),
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ));
  }
}
