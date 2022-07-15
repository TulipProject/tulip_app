import 'package:flutter/material.dart';
import 'package:tulip_app/calendar.dart';

class trackerPage extends StatelessWidget {
  final mediaButtons = [
    'assets/BasicsButton.png',
    'assets/MentalHealthButton.png'
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Period Tracker"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(247, 178, 178, 1.0),
        ),
        body: Center(
          child: calendar(),
        ));
  }
}
