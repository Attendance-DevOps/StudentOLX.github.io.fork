/* 
Categories Page will be scrollable.
Custom Icons will be used.
*/

import 'package:flutter/material.dart';
import 'package:olx_server/constants/themeData/themeData.dart';
import 'package:provider/provider.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);

    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 70,
              width: 300,
              child: MaterialButton(
                onPressed: () {},
                color: theme.isDarkMode == false
                    ? const Color.fromARGB(255, 255, 255, 255)
                    : const Color.fromARGB(255, 0, 0, 0),
                elevation: 0,
                highlightElevation: 0,
                child: Row(
                  children: const [
                    Icon(
                      Icons.man,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Stationary Tools",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 70,
              width: 300,
              child: MaterialButton(
                onPressed: () {},
                color: theme.isDarkMode == false
                    ? const Color.fromARGB(255, 255, 255, 255)
                    : const Color.fromARGB(255, 0, 0, 0),
                elevation: 0,
                highlightElevation: 0,
                child: Row(
                  children: const [
                    Icon(
                      Icons.man,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Electronics",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 70,
              width: 300,
              child: MaterialButton(
                onPressed: () {},
                color: theme.isDarkMode == false
                    ? const Color.fromARGB(255, 255, 255, 255)
                    : const Color.fromARGB(255, 0, 0, 0),
                elevation: 0,
                highlightElevation: 0,
                child: Row(
                  children: const [
                    Icon(
                      Icons.man,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Books",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 70,
              width: 300,
              child: MaterialButton(
                onPressed: () {},
                color: theme.isDarkMode == false
                    ? const Color.fromARGB(255, 255, 255, 255)
                    : const Color.fromARGB(255, 0, 0, 0),
                elevation: 0,
                highlightElevation: 0,
                child: Row(
                  children: const [
                    Icon(
                      Icons.man,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Clothings",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 70,
              width: 300,
              child: MaterialButton(
                onPressed: () {},
                color: theme.isDarkMode == false
                    ? const Color.fromARGB(255, 255, 255, 255)
                    : const Color.fromARGB(255, 0, 0, 0),
                elevation: 0,
                highlightElevation: 0,
                child: Row(
                  children: const [
                    Icon(
                      Icons.man,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Sports",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
