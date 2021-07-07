import 'package:flutter/material.dart';
import 'package:tulip_app/mediaButton.dart';

class mediaPage extends StatelessWidget{
  final mediaButtons = ['assets/BasicsButton.png', 'assets/MentalHealthButton.png'];

  Widget build(BuildContext){
    return Scaffold(
      body: Column(children: <Widget>[mediaButton(mediaButtons[0]), mediaButton(mediaButtons[1])],)
    );
  }
}