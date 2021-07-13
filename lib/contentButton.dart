import 'package:flutter/material.dart';
import 'package:tulip_app/mediaCategoryPage.dart';

class contentButton extends StatefulWidget{
  final image;
  final title;

  contentButton(this.image, this.title){}
  @override
  State<StatefulWidget> createState() {
    return _contentButton(image, title);
  }
  }

class _contentButton extends State<contentButton> {
  final image;
  final title;

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.black87,
    minimumSize: Size(5, 1),
    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );

  _contentButton(this.image, this.title){}
  
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
