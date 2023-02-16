import 'package:flutter/material.dart';
import 'package:olx_student_app/screens/homepage/homepage.dart';
import 'package:olx_student_app/themes/allSplashScreens.dart';
import 'package:olx_student_app/themes/allThemes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static ValueNotifier<Scaffold> currentSplashScreen =
      ValueNotifier(allthemes[0].splashScreen);

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    if (!mounted) return;
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: currentSplashScreen,
        builder: ((context, value, child) {
          return value;
        }));
  }
}
