import 'package:flutter/material.dart';
import 'dimension.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabBody;

  const ResponsiveLayout(
      {super.key, required this.mobileBody, required this.tabBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < tabScreenSize) {
        return mobileBody;
      } else if (constraints.maxWidth < webScreenSize) {
        return tabBody;
      } else {
        return Center(
          child: Container(
            child: const Text(
                "Desktop view is on holiday. Wait for it or shrink window size below 900px"),
          ),
        );
      }
    });
  }
}
