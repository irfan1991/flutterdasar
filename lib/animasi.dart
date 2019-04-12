import 'package:flutter/material.dart';

//void main() => runApp(new MaterialApp(home: new Test4()));
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
      title: 'Animasi Application',
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }



}

class MainScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
        backgroundColor: Colors.green,
      ),
      body: GestureDetector(
        child: Hero(tag: 'imageHero', child: Image.network('http://www.udacoding.com/wp-content/uploads/2019/01/50091873_179313046362219_4720222159456753743_n-768x576.jpg'
        )
        ),
        onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (_) {
           return DetailScreen();
         })) ;
        },
      ),
    );
    
    
  }
}

class DetailScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: GestureDetector(
        child: Hero(tag:  'imageHero', child:Image.network('http://www.udacoding.com/wp-content/uploads/2019/01/50091873_179313046362219_4720222159456753743_n-768x576.jpg'
        )),
      ),
    );
  }
}


