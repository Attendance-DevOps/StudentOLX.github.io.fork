import 'package:flutter/material.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Home/homeItems/filter/filterConstants.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Home/homeItems/filter/locationFilter.dart';
import 'package:olx_student_app/color_utils.dart';

class UserLocation extends StatelessWidget {
  const UserLocation({super.key});
  static ValueNotifier currentPlace = ValueNotifier(all[0]);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 45,
      child: Row(
        children: [
          const SizedBox(
            width: 5,
          ),
          Icon(
            Icons.location_on_sharp,
            color: hexStringToColor("F6EFEF"),
          ),
          const SizedBox(
            width: 5,
          ),
          ValueListenableBuilder(
            valueListenable: currentPlace,
            builder: ((context, value, _) {
              return Flexible(
                child: SizedBox(
                    width: size.width * 0.78,
                    height: 20,
                    child: Text(
                      value,
                      style: TextStyle(
                          color: hexStringToColor("F6EFEF"), fontSize: 16),
                      overflow: TextOverflow.clip,
                    )),
              );
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
