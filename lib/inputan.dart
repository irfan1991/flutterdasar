import 'package:flutter/material.dart';


class Test3 extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();


}

class _MyAppState extends State<Test3> {

  String text = '';
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Inputan App',
      home: new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: new Text('TextField Widget'),
        ),
        body: new Column(
          children: <Widget>[
            new TextField(
              onChanged: (String txt){
                setState(() {
                  text = txt;
                });
              },
           decoration: new InputDecoration(hintText: 'input username', labelText: 'Username'), ),
            new Text(text)
          ],
        ),
      ),
    );
  }



}


