import 'package:flutter/material.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Home/homeItems/filter/filterConstants.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Home/homeItems/filter/locationFilter.dart';

class UserLocation extends StatelessWidget {
  const UserLocation({super.key});
  static ValueNotifier currentPlace = ValueNotifier(all[0]);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 45,
      color: const Color.fromARGB(255, 88, 87, 82),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width * 0.19,
            child: const Text(
              "Receive At ",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          const Text(" - ", style: TextStyle(color: Colors.white)),
          const SizedBox(
            width: 10,
          ),
          ValueListenableBuilder(
            valueListenable: currentPlace,
            builder: ((context, value, _) {
              return SizedBox(
                  width: size.width * 0.6,
                  height: 20,
                  child: Text(
                    value,
                    style: const TextStyle(color: Colors.white),
                    overflow: TextOverflow.clip,
                  ));
            }),
          ),
          const SizedBox(
            width: 2,
          ),
          const LocationFilter(),
        ],
      ),
    );
  }
}