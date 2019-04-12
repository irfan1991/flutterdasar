import 'package:flutter/material.dart';



class Test6 extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();


}

class _MyAppState extends State<Test6> {

  SimpleDialog sd ;

  void dialog(){
  sd = new SimpleDialog(
    title: new Text('Pilih Salah Satu'),
    children: <Widget>[
      new SimpleDialogOption(
        child: new Text('Jakarta'),
        onPressed: (){print('Jakarta');},
      ),
      new SimpleDialogOption(
        child: new Text('Padang'),
        onPressed: (){print('Padang');},
      ),
      new SimpleDialogOption(
        child: new Text('Bandung'),
        onPressed: (){print('Bandung');},
      ),
      new SimpleDialogOption(
        child: new Text('Close'),
        onPressed: (){Navigator.of(context).pop();},
      ),
    ],
  ) ;
  showDialog(context: context, child: sd);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Notification Widget'),
        backgroundColor: Colors.blue,
      ),
      body: new Center(
        child: new RaisedButton(onPressed: (){dialog();}, child: new Text('Show Simple Dialog'),),
        
      ),
    );
  }


}


