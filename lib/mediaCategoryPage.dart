import 'package:flutter/material.dart';

class mediaCategoryPage extends StatelessWidget{
  final categoryTitle;

  mediaCategoryPage(this.categoryTitle){}

  Widget build(BuildContext){
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle))
    );
  
  }
}