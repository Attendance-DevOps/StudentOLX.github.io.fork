import 'package:flutter/material.dart';
import 'package:olx_student_app/screens/splashScreen/splashScreen.dart';

class TabBodyLayout extends StatefulWidget {
  const TabBodyLayout({super.key});

  @override
  State<TabBodyLayout> createState() => _TabBodyLayoutState();
}

class _TabBodyLayoutState extends State<TabBodyLayout> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}