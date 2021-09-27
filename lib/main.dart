import 'package:flutter/material.dart';
import 'package:pass_generator/settings_selector_page.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Password Generator',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: SettingsSelectorPage(),
    );
  }
}
