import 'package:flutter/material.dart';
import 'package:tulip_app/mediaPage.dart';
import 'package:tulip_app/settingsPage.dart';
import 'package:tulip_app/trackerPage.dart';

class Nav extends StatefulWidget {
  @override
  navState createState() => navState();
}

class navState extends State<Nav> {
  int _currentIndex = 0;
  List<Widget> widgetOptions = <Widget>[
    mediaPage(),
    trackerPage(),
    settingsPage(),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(_currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Media',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.track_changes_rounded),
            label: 'Tracker',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onTap,
        selectedItemColor: Color.fromRGBO(247, 178, 178, 1.0),
      ),
    );
  }
}
