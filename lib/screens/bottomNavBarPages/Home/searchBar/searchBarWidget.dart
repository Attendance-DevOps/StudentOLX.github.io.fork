import 'package:flutter/material.dart';

/// Search Bar with textfield which reads value from user and show dynamic results matching with it in bottom list view
/// Search icon button which takes the value from text field and perform its search

Widget searchBarWidget() {
  return TextField(
    autofocus: true,
    keyboardType: TextInputType.multiline,
    textAlign: TextAlign.left,
    decoration: InputDecoration(
        hintStyle: const TextStyle(color: Color.fromARGB(255, 100, 97, 97)),
        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        hintText: "Search for products",
        suffixIcon: IconButton(
            iconSize: 24,
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            )),
        focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent))),
  );
}
