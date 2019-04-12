import 'package:flutter/material.dart';


class Test4 extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();


}

class _MyAppState extends State<Test4> {

  String textButton = '';

  void method1(value){
    setState(() {
      textButton = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Dummy Application',
      home:  new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text('Button Widget'),
        ),
        body: new Column(
          children: <Widget>[
            new RaisedButton(onPressed: (){
              method1('You Press Button');
            }, child: new Text('Klik Button'),
            ),
            new FlatButton(onPressed: null, child: new Text('The Flat Button')),
            new Text(textButton)
          ],
        ),
      ),
    );
  }



}


