import 'package:flutter/material.dart';
import 'package:olx_student_app/screens/splashScreen/splashScreen.dart';
import 'package:olx_student_app/themes/allThemes.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// late Box box;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Hive initialization
  // await Hive.initFlutter();
  /// Will use LazyBox in future to avoid loading screens and themes in one go causing to inefficency of app
  // box = await Hive.openBox("box");
  // Hive.registerAdapter()
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// Fetching value from ThemeDialogBox selected theme and initializing theme by first theme in the all themes list
  static ValueNotifier<ThemeData> currentTheme =
      ValueNotifier(allthemes[0].themeType);
  @override
  Widget build(BuildContext context) {
    /// Listening the value from ValueNotifier
    return ValueListenableBuilder(

        /// Assigning CurrentTheme to the fetched theme value
        valueListenable: currentTheme,

        /// Building the App using Fetched Value of theme
        builder: ((context, value, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',

            /// Spash screen According to the Theme
            home: const SplashScreen(),

            /// Providing the theme value from Valuenotifier to main theme
            theme: value, // accepts themedata
          );
        }));
  }
}
