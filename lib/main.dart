import 'package:flutter/material.dart';
import 'package:tulip_app/mediaPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromRGBO(255,220,220,1.0)
      ),
      home:
        DefaultTabController(
              length: 4,
              child: Scaffold(
                appBar: AppBar(
                  title: Text('Tulip App'),
                  bottom: TabBar(
                    tabs: [
                      Tab(icon: Image.asset('assets/Video_Icon.png')),
                      Tab(icon: Image.asset('assets/Tracker_Icon.png')),
                      Tab(icon: Image.asset('assets/Questions_Icon.png')),
                      Tab(icon: Image.asset('assets/Settings_Icon.png')),
                      
                    ],
                  ),
                ),
                body: TabBarView(
                  children: [
                    mediaPage(),
                    Text('Settings'),
                    Text('Tracker'),
                    Text('Video')
                  ],
                ),
              ),
            ),
    );
  }
}
