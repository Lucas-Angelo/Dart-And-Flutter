import 'dart:convert';

import 'package:http/http.dart' as http;

Future main() async {
  final todo = await fetch();
  var objJson = todo.toJson();
  print(todo.title);
  print('\n${objJson}');
}

Future<Todo> fetch() async {
  var url = 'https://jsonplaceholder.typicode.com/todos/1';
  var response = await http.get(url);
  // print(response.body);
  var json = jsonDecode(response.body);
  
  var todo = Todo.fromJson(json);
  /*
  var todo = Todo(
    title: json['title'], 
    id: json['id'], 
    userId: json['userId'], 
    completed: json['completed']
  );
  */

  return todo;
}

class Todo {

  final String title;
  final int id;
  final int userId;
  final bool completed;

  Todo({this.title, this.id, this.userId, this.completed});

  factory Todo.fromJson(Map json){
    return Todo(
      title: json['title'], 
      id: json['id'], 
      userId: json['userId'], 
      completed: json['completed']
    );
  }

  Map toJson() {
    return {
      'title': title,
      'id': id,
      'userId': userId,
      'completed': completed
    };
  }

}