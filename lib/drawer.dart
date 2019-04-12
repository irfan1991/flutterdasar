import 'package:flutter/material.dart';
import 'halamanlain.dart';


class Test3 extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();


}

class _MyAppState extends State<Test3> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Navigasi Drawer'),
        backgroundColor: Colors.green,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new  UserAccountsDrawerHeader(accountName: Text('Yusmi Putra'), accountEmail: Text('udang@udacoding.com'),
              currentAccountPicture: new CircleAvatar(backgroundColor: Colors.black26, child: new Text('P'),),
              decoration: new BoxDecoration(color: Colors.lightBlue),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(backgroundColor: Colors.black26, child: new Text('Y'),),
                new CircleAvatar(backgroundColor: Colors.black26, child: new Text('W'),),

              ],

            ),
            new ListTile(title: new Text('Home Page'), trailing: new Icon(Icons.home),onTap: () => Navigator.of(context)
                .push(new MaterialPageRoute(builder: (BuildContext context) => new PageBaru('Welcome to Home Page'))),),
            new ListTile(title: new Text('List Laptop'), trailing: new Icon(Icons.laptop),onTap: ()=> Navigator.of(context)
                .push(new MaterialPageRoute(builder: (BuildContext context) => new PageBaru('Welcome to List Product'))),),
            new ListTile(title: new Text('Close'), trailing: new Icon(Icons.close), onTap: () {Navigator.pop(context);},),


          ],
        ),
      ),
    );
  }



}


