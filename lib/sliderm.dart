import 'package:flutter/material.dart';


class Test5 extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();


}

class _MyAppState extends State<Test5> {

  double drag = 1.0;
  void method1(value){
    setState(() {
      drag = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Slider App',
      home: new Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text('Drag Slider'),
        ),
        body: new Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Slider(
                  value: drag, min: 1.0, max: 10.0,
                  onChanged: (double val){ method1(val);}
                  ),
              new Text('value  : $drag'),
            ],
          ),
        )
      ),
    );
  }



}


