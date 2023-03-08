import 'package:flutter/material.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Home/homeItems/filter/filterConstants.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Home/homeItems/filter/userLocation.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Home/searchBar/searchBarPage.dart';

import 'filter/locationFilter.dart';

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
                  color: const Color.fromARGB(255, 46, 46, 45),
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
                      style:
                          TextStyle(color: Color.fromARGB(255, 141, 135, 135)),
                    ),
                  )),
            ),
            const SizedBox(
              width: 4,
            ),
            IconButton(
                splashRadius: 20,
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_active_outlined,
                  color: Color.fromARGB(255, 218, 212, 212),
                ))
          ],
        ),
      ),
    );
  }

  /// Body of homePage
  static Widget homePage(size, value, context) {
    return SafeArea(
        child: ListView(
      children: const [
        // user college/school with filter button so that user can choose different places for selling or buying
        UserLocation(),
        // sliding view list of products
        // Trending - grid view of products ( max 4 or 6)
        // Your inspiration - grid  view of products
        // Recently added products - grid view of products
      ],
    ));
  }
}
