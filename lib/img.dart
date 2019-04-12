import 'package:flutter/material.dart';

class ImageFromAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Page Image From Asset'),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: <Widget>[
            Image.asset('gambar/comfest.png'),
            Text('Comfest')
          ],
        ),
      ),
    );
  }

}