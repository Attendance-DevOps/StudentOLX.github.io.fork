// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return OrientationBuilder(builder: (context, orientation) {
//       final isPortrait = orientation == Orientation.portrait;
//       return isPortrait
//           ? Scaffold(
//               appBar: AppBar(),
//               body: Container(
//                 width: 300,
//                 height: 200,
//                 color: Colors.grey,
//               ),
//             )
//           : Scaffold(
//               appBar: AppBar(
//                 title: Text("Landscapr"),
//               ),
//               body: Container(
//                 width: 500,
//                 height: 200,
//                 color: Colors.grey,
//               ),
//             );
//     });
//   }
// }



// return FutureBuilder(
//         future: categoryPage(),
//         builder: (context, snapshot) {
//           /// Future done with no errors
//           if (snapshot.connectionState == ConnectionState.done &&
//               !snapshot.hasError) {
//             final data = snapshot.data;
//             if (data == null) {
//               return Container(
//                 child: const Text('Empty loaded'),
//               );
//             } else {
//               return data;
//             }
//           } else if (snapshot.connectionState == ConnectionState.done &&
//               snapshot.hasError) {
//             return Text("The error ${snapshot.error} has occured");
//           } else {
//             return LoadingScreen();
//           }
//         });


// import 'package:flutter/material.dart';
// import 'package:olx_student_app/main.dart';
// import 'package:olx_student_app/screens/loadingScreen/loadingScreen.dart';

// /// Categories will the following items in it:
// /// Stationary, Electronics And Accessories, CLothings, Books, Sport Items
// class Categories extends StatelessWidget {
//   Categories({super.key});
//   @override
//   Widget build(BuildContext context)async {
//     var size = MediaQuery.of(context).size;
//     return await categoryPage();
//   }
// }

//  Future<Widget> categoryPage() async {
//   ValueNotifier currTheme = await MyApp.currentTheme;
//   return ValueListenableBuilder(
//       valueListenable: currTheme,
//       builder: ((context, value, _) {
//         Decoration pageDecoration = value.themeStructure.categoryPageDecoration;
//         return Container(
//           decoration: pageDecoration,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(
//                 height: 10,
//               ),
//               FutureBuilder(
//                   future: categoryWidget(
//                       value, Icons.border_color_sharp, 'Stationary', context),
//                   builder: (context, snapshot) {
//                     final data = snapshot.data;
//                     return data ??
//                         Container(
//                           child: const Text('empty container widget'),
//                         );
//                   }),
//               FutureBuilder(
//                   future: categoryWidget(value, Icons.ad_units,
//                       'Electronics & Accessories', context),
//                   builder: (context, snapshot) {
//                     final data = snapshot.data;
//                     return data ??
//                         Container(
//                           child: const Text('empty container widget'),
//                         );
//                   }),
//               FutureBuilder(
//                   future: categoryWidget(
//                       value, Icons.accessibility, 'Clothings', context),
//                   builder: (context, snapshot) {
//                     final data = snapshot.data;
//                     return data ??
//                         Container(
//                           child: const Text('empty container widget'),
//                         );
//                   }),
//               FutureBuilder(
//                   future: categoryWidget(value, Icons.book, 'Books', context),
//                   builder: (context, snapshot) {
//                     final data = snapshot.data;
//                     return data ??
//                         Container(
//                           child: const Text('empty container widget'),
//                         );
//                   }),
//               FutureBuilder(
//                   future: categoryWidget(
//                       value, Icons.sports, 'Sports Items', context),
//                   builder: (context, snapshot) {
//                     final data = snapshot.data;
//                     return data ??
//                         Container(
//                           child: const Text('empty container widget'),
//                         );
//                   }),
//             ],
//           ),
//         );
//       }));
// }

// Future categoryWidget(currTheme, icon, text, context) async {
//   Color iconColor = currTheme.themeStructure.categoryIconColor;
//   TextStyle textStyle = currTheme.themeStructure.categoryTextStyle;
//   ButtonStyle buttonStyle = currTheme.themeStructure.categoryButtonStyle;
//   var size = MediaQuery.of(context).size;
//   return TextButton.icon(
//     icon: Icon(icon),
//     style: TextButton.styleFrom(
//       minimumSize: Size(size.width, 70),
//       alignment: Alignment.centerLeft,
//       elevation: 0,
//     ),
//     onPressed: () {},
//     label: Text(text)
//     // child: Row(
//     //   children: [
//     //     Icon(
//     //       icon,
//     //       color: iconColor,
//     //     ),
//     //     SizedBox(
//     //       width: size.width * 0.07,
//     //     ),
//     //     Container(
//     //       child: Text(
//     //         text,
//     //         style: textStyle,
//     //         // style: ,
//     //       ),
//     //     )
//     //   ],
//     // ),
//     ,
//   );
// }
