import 'package:flutter/material.dart';

class PageBaru extends StatelessWidget{
  final String menu;
  PageBaru(this.menu);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: new Text('$menu'),
      ),
      body: new Center(
        child: new Text('$menu'),
      ),
    );
  }


}