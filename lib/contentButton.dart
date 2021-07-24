import 'package:flutter/material.dart';
import 'package:tulip_app/videoPage.dart';


class contentButton extends StatefulWidget {
  final image;
  final title;
  final discription;

  contentButton(this.image, this.title, this.discription) {}
  @override
  State<StatefulWidget> createState() {
    return _contentButton(image, title, discription);
  }
}

class _contentButton extends State<contentButton> {
  final image;
  final title;
  final description;

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.black87,
    backgroundColor: Colors.white,
    minimumSize: Size(5, 1),
    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );

  _contentButton(this.image, this.title, this.description) {}

  Widget build(BuildContext context) {
    return ElevatedButton(
        style: flatButtonStyle,
        onPressed: () {
          Navigator.of(context).push(_createRoute());
        },
        child: Row(children: [
          Image.asset(image, height: 100, width: 100),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 20),
              child: Text(
                this.title,
                style:
                    TextStyle(height: 1, fontFamily: 'Quicksand', fontSize: 25),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 10, top: 20),
                child: Text(
                  this.description,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      height: 1, fontSize: 20, fontFamily: 'Quicksand'),
                ))
          ])
        ]));
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          videoPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }
}
