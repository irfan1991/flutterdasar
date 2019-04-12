import 'package:flutter/material.dart';
void main() => runApp(new MaterialApp(home: new Test6()));


class Test6 extends StatelessWidget {
  final GlobalKey<ScaffoldState> skey = new GlobalKey<ScaffoldState>();

  void method1(){
    skey.currentState.showSnackBar(new SnackBar(content: new Text('This is Snackbar')))  ;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Notification Widget'),
        backgroundColor: Colors.blue,
      ),
      key: skey,
      body: new Center(
        child: new RaisedButton(onPressed: (){method1();}, child: new Text('Show Simple snackbar'),),

      ),
    );
  }


}


