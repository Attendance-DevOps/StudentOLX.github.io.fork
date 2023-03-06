import 'package:flutter/material.dart';
import 'package:olx_student_app/screens/splashScreen/splashScreen.dart';

class MobileBodyLayout extends StatefulWidget {
  const MobileBodyLayout({super.key});

  @override
  State<MobileBodyLayout> createState() => _MobileBodyLayoutState();
}

class _MobileBodyLayoutState extends State<MobileBodyLayout> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}

