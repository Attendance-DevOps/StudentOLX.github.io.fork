import 'package:flutter/material.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Home/searchBar/searchBarPage.dart';

import '../searchBar/searchBarWidget.dart';

class HomeItems {
  static Widget homePage(size, value, context) {
    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        snap: false,
        pinned: true,
        floating: false,
        elevation: 1,
        shape: const Border(bottom: BorderSide(width: 0)),
        toolbarHeight: 62,
        backgroundColor: Color.fromRGBO(39, 38, 38, 1),
        flexibleSpace: Padding(
          padding: const EdgeInsets.fromLTRB(10, 35, 10, 10),
          child: Row(
            children: [
              Container(
                width: size.width - 70,
                height: 45,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 46, 46, 45),
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
                            color: Color.fromARGB(255, 141, 135, 135)),
                      ),
                    )),
              ),
              const SizedBox(
                width: 1,
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
      )
    ]);
  }
}
