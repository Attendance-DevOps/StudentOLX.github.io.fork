import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:olx_server/constants/themeData/themeData.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: theme.isDarkMode == false
                ? Color.fromARGB(255, 0, 0, 0)
                : Color.fromARGB(255, 255, 255, 255)),
        backgroundColor: theme.isDarkMode == false
            ? Color.fromARGB(255, 226, 221, 221)
            : const Color.fromARGB(255, 0, 0, 0),
        title: Text(
          "Settings",
          style: TextStyle(
              color: theme.isDarkMode == false
                  ? const Color.fromARGB(255, 0, 0, 0)
                  : const Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      body: Column(
        children: [
          MessageNotification(),
          UserAgreement(),
          PrivacyStatement(),
          themeToggleButton()
        ],
      ),
    );
  }

  Widget MessageNotification() {
    final theme = Provider.of<ThemeProvider>(context);
    return Container(
      height: 40,
      // width: 100,
      // color: Colors.orange,
      child: Row(
        children: [
          Text(
            "Message Notification",
            style: TextStyle(
                color: theme.isDarkMode == false
                    ? const Color.fromARGB(255, 0, 0, 0)
                    : const Color.fromARGB(255, 255, 255, 255)),
          )
        ],
      ),
    );
  }

  Widget UserAgreement() {
    final theme = Provider.of<ThemeProvider>(context);
    return Container(
      height: 40,
      // width: 100,
      // color: Colors.orange,
      child: Row(
        children: [
          Text(
            "Message Notification",
            style: TextStyle(
                color: theme.isDarkMode == false
                    ? const Color.fromARGB(255, 0, 0, 0)
                    : const Color.fromARGB(255, 255, 255, 255)),
          )
        ],
      ),
    );
  }

  Widget PrivacyStatement() {
    final theme = Provider.of<ThemeProvider>(context);
    return Container(
      height: 40,
      // width: 100,
      // color: Colors.orange,
      child: Row(
        children: [
          Text(
            "Message Notification",
            style: TextStyle(
                color: theme.isDarkMode == false
                    ? const Color.fromARGB(255, 0, 0, 0)
                    : const Color.fromARGB(255, 255, 255, 255)),
          )
        ],
      ),
    );
  }

  Widget themeToggleButton() {
    final theme = Provider.of<ThemeProvider>(context);
    return Container(
      height: 40,
      // width: 100,
      // color: Colors.orange,
      child: Row(
        children: [
          Text(
            "Theme",
            style: TextStyle(
                color: theme.isDarkMode == false
                    ? const Color.fromARGB(255, 0, 0, 0)
                    : const Color.fromARGB(255, 255, 255, 255)),
          ),
          Switch.adaptive(
        value: theme.isDarkMode,
        onChanged: (value) {
          final provider = Provider.of<ThemeProvider>(context, listen: false);
          provider.toggleTheme(value);
        })
        ],
      ),
    );
  }
}
