import 'package:flutter/material.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Home/homeItems/filter/userLocation.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Home/homeItems/gridViewCards/productGridView.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Home/homeItems/horizontalProductView/horizontalView.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Home/searchBar/searchBarPage.dart';
import 'package:olx_student_app/color_utils.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Profile/profileNavigation/appSettings/appSettings.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Profile/profilePageItems.dart';

/// Home Items contains homePage appbar, body
class HomeItems {
  /// homePage AppBar
  static AppBar homePagebar(size, value, context) {
    return AppBar(
      /// Search Bar code
      flexibleSpace: Padding(
        padding: const EdgeInsets.fromLTRB(10, 35, 10, 5),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: size.width * 0.8,
              height: 45,
              decoration: BoxDecoration(
                  color: hexStringToColor("F6EFEF"),
                  border: Border.all(width: 0.5),
                  borderRadius: BorderRadius.circular(5)),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const SearchBarPage();
                    }));
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Search",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
                    ),
                  )),
            ),
            const SizedBox(
              width: 4,
            ),
            IconButton(
                splashRadius: 20,
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_active_outlined,
                  color: hexStringToColor("F6EFEF"),
                ))
          ],
        ),
      ),
    );
  }

  /// Body of homePage
  static Widget homePage(size, value, context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SafeArea(
          child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: size.width,
          maxWidth: size.width,
        ),
        child: Column(
          children: [
            // user college/school with filter button so that user can choose different places for selling or buying
            UserLocation(),
            // sliding view list of products
            CarouselView(),
            // Trending - grid view of products ( max 4 or 6)
            ProductGridView(
              title: "Your Inspiration",
            ),
            ProductGridView(title: "Your Inspiration"),
            // Your inspiration - grid  view of products
            // Recently added products - grid view of products
          ],
        ),
      )),
    );
  }
}
// static Widget homePage(size, value, context) {
//     return SingleChildScrollView(
//       child: SafeArea(
//           child: Column(
//         children: const [
//           // user college/school with filter button so that user can choose different places for selling or buying
//           UserLocation(),
//           // sliding view list of products
//           CarouselView(),
//           // Trending - grid view of products ( max 4 or 6)
//           ProductGridView(),
//           ProductGridView(),
//           // Your inspiration - grid  view of products
//           // Recently added products - grid view of products
//         ],
//       )),
//     );
//   }