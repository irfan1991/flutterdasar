import 'package:flutter/material.dart';


class Test2 extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();


}

class _MyAppState extends State<Test2> {

  
  @override
  Widget build(BuildContext context) {
      return new Container(
        color: Colors.pink,
        child: new Container(
          color: Colors.yellow,
          margin: const EdgeInsets.all(15.0),
            child: new Container(
              color: Colors.purple,
              margin: const EdgeInsets.all(20.0),
                child: new Container(
                  color: Colors.blue,
                  margin: const EdgeInsets.all(30.0),
                    child: new Container(
                      color: Colors.green,
                      margin: const EdgeInsets.all(15.0),
                        child: methodCustome(),
                    ),
                ),
            ),
        ),
      );
    
  }

  Widget methodCustome(){
    return new Container(
      color: Colors.red,
      margin: const EdgeInsets.all(15.0),
    );
  }


}


