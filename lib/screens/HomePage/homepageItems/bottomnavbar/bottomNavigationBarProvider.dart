import 'package:flutter/material.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Categories/categories.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Profile/profile.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Chat/chat.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Sell/sell.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Home/home.dart';

class BottomNavigationBarProvider with ChangeNotifier {
  List<NavBarStruct> items = [
    NavBarStruct(widget: const Home(), iconData: Icons.home),
    NavBarStruct(
        widget: Categories(), iconData: Icons.auto_awesome_mosaic_rounded),
    NavBarStruct(iconData: Icons.add, widget: SELL()),
    NavBarStruct(iconData: Icons.chat, widget: const Chat()),
    NavBarStruct(iconData: Icons.account_circle_sharp, widget: const Profile()),
  ];
  int _currentIndex = 0;
  get currentIndex => _currentIndex;
  set currentIndex(index) {
    _currentIndex = index;
    notifyListeners();
  }
}

class NavBarStruct {
  Widget? widget;
  IconData? iconData;
  NavBarStruct({this.widget, this.iconData});
}
