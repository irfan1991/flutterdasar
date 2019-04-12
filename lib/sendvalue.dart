import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

void main(){
  runApp(MaterialApp(
    title: 'Kirim data Apps',
    debugShowCheckedModeBanner: false,
    home: TodoScreen(
      todos : List.generate(10, (i) => Todo(
        'Judul Berita $i',
        'Detail isi berita ke $i '
      ))
    ),
  ));
}

class TodoScreen extends StatelessWidget{

  final List<Todo> todos;

  const TodoScreen({Key key, this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('List Berita'),
        backgroundColor: Colors.green
        ,
      ),
      body: ListView.builder(itemCount: todos.length,itemBuilder: (context, index){
        return ListTile(
          title: Text(todos[index].title),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(todo:todos[index])));
          },
        );
      }),
    );
  }
}

class DetailScreen extends StatelessWidget {
  
  final Todo todo;

  const DetailScreen({Key key, this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
        backgroundColor: Colors.green,
      ),
      body: Padding(padding: EdgeInsets.all(16.0),
      child: Text(todo.description),),
    );
  }
  
}