import 'package:flutter/material.dart';
import 'package:tulip_app/mediaPage.dart';
import 'package:tulip_app/TrackerPage.dart';
import 'package:tulip_app/settingsPage.dart';
import 'package:tulip_app/nav.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(255, 220, 220, 1.0),
      ),
      home: Nav(),
    );
  }
}
