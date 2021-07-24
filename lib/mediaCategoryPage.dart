import 'package:flutter/material.dart';
import 'package:tulip_app/contentButton.dart';

class mediaCategoryPage extends StatelessWidget{
  final categoryTitle;
  final thumbnailList;
  final titleList;
  final descriptionList;

  mediaCategoryPage(this.categoryTitle, this.thumbnailList, this.titleList, this.descriptionList){}

  Widget build(BuildContext){
    return Scaffold(
      appBar: AppBar(title: categoryTitle),
      body: 
          Column(children: [
            contentButton('assets/Logo.jpg', 'What is a Period?', '1m 24s')
            ],),
         
    );
  
  }
}