import 'package:flutter/material.dart';
import 'package:tulip_app/mediaButton.dart';

class mediaPage extends StatelessWidget {
  final mediaButtons = [
    'assets/BasicsButton.png',
    'assets/MentalHealthButton.png'
  ];

  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Videos"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(247, 178, 178, 1.0),
      ),

      /*
        body: Column(
          children: <Widget>[
            mediaButton(mediaButtons[0]),
            mediaButton(mediaButtons[1])
          ],
        )*/
    );
  }
}
