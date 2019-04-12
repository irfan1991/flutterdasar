import 'package:flutter/material.dart';


class Test6 extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();


}

class _MyAppState extends State<Test6> {
  bool sbool = false;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Slider App',
      home: new Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: new AppBar(
            backgroundColor: Colors.green,
            title: new Text('Wwitch Widget'),
          ),
          body: new Center(
            child: new Switch(value: sbool, onChanged: (bool sb) {
              setState(() {
                sbool = sb;
                print(sbool);
              });
            }
            )
          )
      ),
    );
  }



}


