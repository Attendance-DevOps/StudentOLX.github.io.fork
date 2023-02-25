import 'package:flutter/material.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Profile/profileNavigation/appSettings/appSettings.dart';

class ProfilePageItems {
  // static AppBar profileAppBar() {
  //   return AppBar(
  //     title: const Text("Profile"),
  //   );
  // }

  /// Profile Page
  static Widget profilePage(size, value, context) {
    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        snap: false,
        pinned: true,
        floating: false,
        elevation: 0,
        shape: const Border(bottom: BorderSide(width: 0)),
        toolbarHeight: 60,
        backgroundColor: const Color.fromARGB(255, 236, 15, 15),
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
                'Profile',
                style: TextStyle(
                    color: Color.fromARGB(255, 206, 206, 206), fontSize: 25),
              ),
            ),
          ),
        ),
      ),
      SliverFillRemaining(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(
              child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: size.width,
              maxWidth: size.width,
            ),
            child: Column(
              children: [
                profileSection(size),
                const SizedBox(
                  height: 8,
                ),
                profileTabs("My Orders", size, null, Icons.card_membership,
                    value, 16.0, 11.0, () {}),
                profileTabs("My Purchases", size, "Billing And Invoices",
                    Icons.shopping_bag, value, 16.0, 11.0, () {}),
                profileTabs("Help and Support", size, "Resolve your Queries",
                    Icons.question_answer, value, 16.0, 11.0, () {}),
                profileTabs("Wish List", size, "Tell your wish product",
                    Icons.insert_emoticon, value, 16.0, 11.0, () {}),
                profileTabs("Language", size, "Choose your language",
                    Icons.language, value, 16.0, 11.0, () {}),
                profileTabs("Account Settings", size, null, Icons.settings,
                    value, 16.0, 11.0, () {}),
                profileTabs("App Settings", size, null,
                    Icons.settings_applications, value, 16.0, 11.0, () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AppSettings();
                  }));
                }),
                profileTabs("Log Out", size, null, Icons.logout, value, 16.0,
                    11.0, () {}),
              ],
            ),
          )),
        ),
      )
    ]);
  }

  /// Profile Section with Profile Photo or Avatar which leads to new Profile Page where edit options will be provided to user

  static Widget profileSection(size) {
    return SingleChildScrollView(
      child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.transparent)),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 33,
                child: Text(
                  "H",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                width: size.width * 0.6,
                height: size.height * 0.08,
                // color: const Color.fromARGB(255, 68, 64, 26),
                child: Column(
                  children: const [
                    SizedBox(
                      height: 3,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Honey Bansal",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("View your profile"))
                  ],
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              const Icon(Icons.arrow_right)
            ],
          )),
    );
  }

  static Widget profileTabs(label, size, bottomLabel, icon, value, labelFont,
      bottomLabelFont, onpressed) {
    Widget isBottomLabel(
        label, bottomLabel, value, labelFont, bottomLabelFont, size) {
      return Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              label,
              style: TextStyle(fontSize: labelFont),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                bottomLabel,
                style: TextStyle(fontSize: bottomLabelFont),
              ))
        ],
      );
    }

    Widget noBottomLabel(label, value, labelFont) {
      return Align(
        alignment: Alignment.centerLeft,
        child: Text(
          label,
          style: TextStyle(fontSize: labelFont),
        ),
      );
    }

    if (bottomLabel != null) {
      return Container(
        height: 70,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                elevation: MaterialStateProperty.all(0)),
            onPressed: onpressed,
            child: Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Icon(icon),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Container(
                    width: size.width * 0.7,
                    child: isBottomLabel(label, bottomLabel, value, labelFont,
                        bottomLabelFont, size),
                  ),
                )
              ],
            )),
      );
    } else {
      return Container(
        height: 70,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                elevation: MaterialStateProperty.all(0)),
            onPressed: onpressed,
            child: Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Icon(icon),
                const SizedBox(
                  width: 10,
                ),
                noBottomLabel(label, value, labelFont)
              ],
            )),
      );
    }
  }
}
