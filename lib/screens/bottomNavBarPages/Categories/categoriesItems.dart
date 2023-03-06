import 'package:flutter/material.dart';

class CategoriesItems {
  static AppBar categoryAppBar(size, value, context) {
    return AppBar(
        flexibleSpace: Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
        height: 90,
        width: size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color.fromARGB(255, 59, 59, 59),
              Color.fromARGB(255, 0, 0, 0)
            ])),
        child: const Padding(
          padding: EdgeInsets.only(top: 40, left: 20),
          child: Text(
            'Categories',
            style: TextStyle(
                color: Color.fromARGB(255, 206, 206, 206), fontSize: 25),
          ),
        ),
      ),
    ));
  }

  static Widget categoryPage(size, value, context) {
    Decoration pageDecoration = value.themeStructure.categoryPageDecoration;
    return SingleChildScrollView(
      child: Container(
        decoration: pageDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            categoryWidget(value, Icons.border_color_sharp, 'Stationary', size),
            categoryWidget(
                value, Icons.ad_units, 'Electronics & Accessories', size),
            categoryWidget(value, Icons.accessibility, 'Clothings', size),
            categoryWidget(value, Icons.book, 'Books', size),
            categoryWidget(value, Icons.sports, 'Sports Items', size),
          ],
        ),
      ),
    );
  }

  static Widget categoryWidget(currTheme, icon, text, size) {
    return TextButton.icon(
      icon: Icon(icon),
      style: TextButton.styleFrom(
        minimumSize: Size(size.width, 70),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 25),
        elevation: 0,
      ),
      onPressed: () {},
      label: Text(text),
    );
  }
}
