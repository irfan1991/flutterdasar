import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Pengembalian Data',
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengembalian Data App'),
        backgroundColor: Colors.green,
      ),
      body: Center(child: SelectionButton(),),
    );
  }
}

class SelectionButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: (){
        _navigateAndDisplaySelection(context);
      },
      child: Text('Silahkan Tekan Tombol Untuk Memilih'),
    );
  }
}

 _navigateAndDisplaySelection(BuildContext context) async{

  final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => SelectionScreen()));
  Scaffold.of(context)..removeCurrentSnackBar()..showSnackBar(SnackBar(content: Text('$result')));
}

class SelectionScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Silahkan pilih'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(onPressed: (){
                Navigator.pop(context, 'Anda melilih Yes !');
              },
              child: Text('Yes!'),
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(onPressed: (){
                Navigator.pop(context,'Anda memilih No !');
              },
              child: Text('No!'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
