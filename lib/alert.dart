import 'package:flutter/material.dart';



class Test7 extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();


}

class _MyAppState extends State<Test7> {

  void dialog(){
      showDialog(context: context, child: new AlertDialog(
        title: new Text('Warning'),
        content: new Text('Anda yakin ingin keluar'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.close), onPressed: (){Navigator.pop(context);})
        ],
      ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement buildnew
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Alert Dialog'),
        backgroundColor: Colors.blue,
      ),
      body: new Center(
        child: new RaisedButton(onPressed: (){dialog();}, child: new Text('Alert Dialog'),),

      ),
    );
  }


}


