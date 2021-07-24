  
import 'package:flutter/material.dart';
import 'package:tulip_app/mediaCategoryPage.dart';

class mediaButton extends StatefulWidget{
  final image;
  final title;

  mediaButton(this.image, this.title){}
  @override
  State<StatefulWidget> createState() {
    return _mediaButton(image, title);
  }
  }

class _mediaButton extends State<mediaButton> {
  final image;
  final title;

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.black87,
    minimumSize: Size(2, 1),
    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );

  _mediaButton(this.image, this.title){}
  
  Widget build(BuildContext context){
    return TextButton(
      style: flatButtonStyle,
      onPressed: (){Navigator.of(context).push(_createRoute());},
      child: Image.asset(image)
    );
  }

  Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => mediaCategoryPage(title, [], [], []),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
      },
    );
  }
}