import 'package:flutter/material.dart';
import 'imgurl.dart';
void main() => runApp(new MaterialApp(home: new Test()));



class Test extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();


}

class _MyAppState extends State<Test> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Custome Widget Method',
      home: new Scaffold(
        body: new ImageFromUrl(),
      ),
    );


  }


}


