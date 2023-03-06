import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  RangeValues values = RangeValues(10, 100000);
  RangeLabels labels = RangeLabels('10', "100000");
  int divisions = 5;
  List strLabels = [];

  @override
  void initState() {
    super.initState();

    strLabels = [
      for (var i = 0; i <= values.end; i += (values.end ~/ divisions)) i
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(
          width: 100,
          child: Column(
            children: [
              SliderTheme(
                data: SliderThemeData(
                  trackHeight: 10,
                ),
                child: RangeSlider(
                  divisions: divisions,
                  activeColor: Color.fromARGB(255, 6, 149, 192),
                  inactiveColor: Color.fromARGB(255, 8, 4, 235),
                  min: 10,
                  max: 100000,
                  values: values,
                  labels: labels,
                  onChanged: (value) {

                    setState(() {
                      values = value;
                      labels = RangeLabels(
                          "₹ ${value.start.toInt().toString()}",
                          "₹ ${value.end.toInt().toString()}");
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
