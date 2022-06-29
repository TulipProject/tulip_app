import 'package:flutter/material.dart';
import 'package:tulip_app/mediaButton.dart';

class trackerPage extends StatelessWidget {
  final mediaButtons = [
    'assets/BasicsButton.png',
    'assets/MentalHealthButton.png'
  ];

  Widget build(BuildContext) {
    return Center(
      child: Text('Tracker'),
    );
  }
}
