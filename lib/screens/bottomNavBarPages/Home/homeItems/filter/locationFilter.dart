/// User location filter page
import 'package:flutter/material.dart';
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
    stateValue = stateDropDownList[0];
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
    var size = MediaQuery.of(context).size;

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
                builder: (BuildContext context, StateSetter setState) {
                  /// Column contains all the filter widgets
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        const Text("Choose Filters"),

                        /// States filter
                        const Text("States"),
                        const SizedBox(
                          height: 10,
                        ),

                        /// Contains all the States in a dropdown list
                        DropdownButton<String>(
                            value: stateValue,
                            enableFeedback: true,
                            isExpanded: true,
                            hint: const Text("Select State"),
                            items: stateDropDownList
                                .map((String e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e),
                                    ))
                                .toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                stateValue = newValue!;
                              });
                            }),

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
                                print(index);

                                /// updating places value in dropdown button
                                // currRadioValue = radioValue[selectedRadio][0];
                              },
                              activeColor: Colors.red,
                              selected: true,
                            );
                          }),
                        ),
                        Text(radioBtns[selectedRadio]),
                        const SizedBox(
                          height: 5,
                        ),

                        /// Dropdownbutton contains all,college,school and  other name according to the selected radio button
                        Visibility(
                            child: (selectedRadio == 0)
                                ? dropDown(allValue, all)
                                : (selectedRadio == 1)
                                    ? dropDown(collegeValue, college)
                                    : (selectedRadio == 2)
                                        ? dropDown(schoolValue, school)
                                        : (selectedRadio == 3)
                                            ? dropDown(otherValue, other)
                                            : dropDown(allValue, all)),

                        const SizedBox(
                          height: 10,
                        ),

                        /// Category filter
                        const Text("Category"),
                        const SizedBox(
                          height: 5,
                        ),

                        dropDown(categoryValue, categories),

                        /// Price filter
                        const Text("Price"),
                        const SizedBox(
                          height: 5,
                        ),
                        SliderScreen()
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
        Icons.filter_alt_outlined,
        color: Colors.white,
      ),
    );
  }

  /// Dropdown Widget

  Widget dropDown(String curr_value, List<String> list) {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return DropdownButton<String>(
            value: curr_value,
            enableFeedback: true,
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
                curr_value = newValue!;
              });
            });
      },
    );
  }
}
