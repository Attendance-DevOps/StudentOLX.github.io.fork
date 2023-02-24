import 'package:flutter/material.dart';
import 'package:olx_student_app/main.dart';
import 'package:olx_student_app/screens/loadingScreen/loadingScreen.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier currTheme = MyApp.currentTheme;
    var size = MediaQuery.of(context).size;
    return ValueListenableBuilder(
        valueListenable: currTheme,
        builder: (context, value, _) {
          value.themeStructure.categoryPageDecoration;
          return FutureBuilder(
            future: chatPage(size, value),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done &&
                  !snapshot.hasError) {
                final data = snapshot.data;
                if (data == null) {
                  return Container(
                    child: const Text('Empty loaded'),
                  );
                } else {
                  return data;
                }
              } else if (snapshot.connectionState == ConnectionState.done &&
                  snapshot.hasError) {
                return Text("The error ${snapshot.error} has occured");
              } else {
                return LoadingScreen();
              }
            },
          );
        });
  }
}

Future<Widget> chatPage(size, value) async {
  Color? containerColor = value.themeStructure.categoryContainerColor;
  return Center(
    child: Container(
      color: containerColor,
      width: size.width,
      height: size.height,
      // child: Text('Recent Page'),
    ),
  );
}
