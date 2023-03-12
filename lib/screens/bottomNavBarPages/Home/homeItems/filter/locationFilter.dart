/// User location filter page
import 'package:flutter/material.dart';
import 'package:olx_student_app/screens/bottomNavBarPages/Home/homeItems/filter/userLocation.dart';
import 'filterConstants.dart';
import 'slider.dart';

class LocationFilter extends StatefulWidget {
  const LocationFilter({super.key});

  @override
  State<LocationFilter> createState() => _LocationFilterState();
}

class _LocationFilterState extends State<LocationFilter> {
  /// Initialization of dropdown value
  _LocationFilterState() {
    selectedRadio = 0;
    categoryValue = categories[0];
  }

  @override
  initState() {
    if (allValue == "") {
      allValue = all[0];
    }
    if (collegeValue == "") {
      collegeValue = college[0];
    }
    if (schoolValue == "") {
      schoolValue = school[0];
    }
    if (otherValue == "") {
      otherValue = other[0];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /// when clicking on filter icon, Gesture Detector will detect it and perform onTap function afterwards
    return GestureDetector(
      onTap: () {
        /// Showing a showdialog Box which contains all the filters
        showDialog(
          context: context,
          builder: (BuildContext context) {
            /// selectedRadio refers to the current radio button from the list of  all,College,School, other

            /// Showing AlertDialog Box which works as a Stateful widget itself
            return AlertDialog(
              content: StatefulBuilder(
                builder: (context, StateSetter setState) {
                  /// Column contains all the filter widgets
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        const Text("Choose Filters"),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Choose Place to buy from"),

                        /// Contains Radiobuttons having all, College,School, other as options
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: List<Widget>.generate(4, (int index) {
                            return RadioListTile(
                              value: index,
                              groupValue: selectedRadio,
                              title: Text(radioBtns[index]),
                              onChanged: (val) {
                                setState(() {
                                  /// updating radio button index
                                  selectedRadio = val!;
                                });

                                /// updating places value in dropdown button
                                // currRadioValue = radioValue[selectedRadio][0];
                              },
                              activeColor: Colors.red,
                              selected: true,
                            );
                          }),
                        ),
                        Text("Select ${radioBtns[selectedRadio]}"),
                        const SizedBox(
                          height: 5,
                        ),

                        /// Dropdownbutton contains all,college,school and  other name according to the selected radio button
                        Visibility(
                            child: (selectedRadio == 0)
                                ? (dropDown(allValue, all))
                                : (selectedRadio == 1)
                                    ? dropDown(
                                        collegeValue,
                                        college,
                                      )
                                    : (selectedRadio == 2)
                                        ? dropDown(
                                            schoolValue,
                                            school,
                                          )
                                        : dropDown(
                                            otherValue,
                                            other,
                                          )),

                        const SizedBox(
                          height: 10,
                        ),

                        /// Category filter
                        const Text("Category"),
                        const SizedBox(
                          height: 5,
                        ),
                        DropdownButton<String>(
                            value: categoryValue,
                            isExpanded: true,
                            hint: const Text("Select State"),
                            items: categories
                                .map((String e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e),
                                    ))
                                .toList(),
                            onChanged: (newValue) {
                              setState(() {
                                categoryValue = newValue!;
                              });
                            }),
                        const Text("Price"),
                        const SizedBox(
                          height: 5,
                        ),
                        const SliderScreen(),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                UserLocation.currentPlace.value =
                                    currentLocation;
                              });
                              Navigator.of(context).pop();
                            },
                            child: const Text("Apply"),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            );
          },
        );
      },
      child: const Icon(
        Icons.filter_list,
        color: Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }

  /// Dropdown Widget

  Widget dropDown(String currValue, List<String> list) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        /// Submitting the current Place location to a variable currentLocation to reflect it in homePage filter bar
        currentLocation = currValue;
        return DropdownButton<String>(
            value: currValue,
            isExpanded: true,
            hint: const Text("Select State"),
            items: list
                .map((String e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ))
                .toList(),
            onChanged: (newValue) {
              setState(() {
                currentLocation = newValue!;
                currValue = newValue;
              });
            });
      },
    );
  }
}
