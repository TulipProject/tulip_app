import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:tulip_app/VideoPlayerController.dart';


class videoPage extends StatelessWidget{

  Widget build(BuildContext){
    return Scaffold(
      appBar: AppBar(title: Text('Video')),
      body: VideoPlayerScreen(),
    );
  }
}