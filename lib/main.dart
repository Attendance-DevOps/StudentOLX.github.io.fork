import 'package:flutter/material.dart';
import 'package:olx_student_app/responsive_layout/mobileBody.dart';
import 'package:olx_student_app/responsive_layout/responsive_layout.dart';
import 'package:olx_student_app/responsive_layout/tabBody.dart';
import 'package:olx_student_app/screens/homepage/homepageItems/bottomnavbar/bottomNavigationBarProvider.dart';
import 'package:olx_student_app/themes/allThemes.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await initialize();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<BottomNavigationBarProvider>(
          create: (_) => BottomNavigationBarProvider())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// Fetching value from ThemeDialogBox selected theme and initializing theme by first theme in the all themes list
  static ValueNotifier<AllThemes> currentTheme = ValueNotifier(allthemes[0]);
  @override
  Widget build(BuildContext context) {
    /// Listening the value from ValueNotifier
    return ValueListenableBuilder(

        /// Assigning CurrentTheme to the fetched theme value
        valueListenable: currentTheme,

        /// Building the App using Fetched Value of theme
        builder: ((context, value, _) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',

            /// Spash screen According to the Theme
            home: const ResponsiveLayout(
                mobileBody: MobileBodyLayout(), tabBody: TabBodyLayout()),

            /// Providing the theme value from Valuenotifier to main theme
            theme: value.themeStructure.themeData, // accepts themedata
          );
        }));
  }
}
