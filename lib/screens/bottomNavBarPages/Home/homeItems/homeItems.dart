import 'package:flutter/material.dart';
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
        child: SingleChildScrollView(
      child: Column(
        children: [
          // user college/school with filter button so that user can choose different places for selling or buying
          userLocation(),
          // sliding view list of products
          // Trending - grid view of products ( max 4 or 6)
          // Your inspiration - grid  view of products
          // Recently added products - grid view of products
        ],
      ),
    ));
  }

  static Widget userLocation() {
    return Container(
      height: 45,
      color: const Color.fromARGB(255, 88, 87, 82),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Location of Receiving",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            width: 6,
          ),
          const Text(" - ", style: TextStyle(color: Colors.white)),
          const SizedBox(
            width: 10,
          ),
          const Text("Vivekanda Institute",
              style: TextStyle(color: Colors.white)),
          const SizedBox(
            width: 10,
          ),
          userLocationFilter()
        ],
      ),
    );
  }

  static Widget userLocationFilter() {
    return LocationFilter();
  }
}
