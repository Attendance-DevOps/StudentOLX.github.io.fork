import 'package:flutter/material.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Home/searchBar/searchBarWidget.dart';

/// Search Bar Page Items which includes a search bar and list of trending or recently searched items

class SearchBarPageItems {
  static Widget searchBarPage(size, value, context) {
    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        snap: false,
        pinned: true,
        floating: false,
        elevation: 0,
        shape: const Border(bottom: BorderSide(width: 0)),
        toolbarHeight: 60,
        flexibleSpace: Container(
            height: 90,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 35, 10, 10),
              child: searchBarWidget(),
            )),
      ),
    ]);
  }
}

_runfilter(value) {}
