import 'package:flutter/material.dart';
import 'package:olx_student_app/screens/homepage/homepageItems/bottomnavbar/bottomNavigationBarProvider.dart';
import 'package:olx_student_app/screens/splashScreen/splashScreen.dart';
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
    child: MyApp(),
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
            home: const SplashScreen(),

            /// Providing the theme value from Valuenotifier to main theme
            theme: value.themeStructure.themeData, // accepts themedata
          );
        }));
  }
}
