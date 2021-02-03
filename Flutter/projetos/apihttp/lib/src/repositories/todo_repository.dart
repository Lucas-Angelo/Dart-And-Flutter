import 'package:apihttp/src/models/todo_model.dart';
import 'package:dio/dio.dart';

class TodoRepository {
  Dio dio;
  final url = 'https://jsonplaceholder.typicode.com/todos';

  TodoRepository([Dio client]) {
    // Forma simplificada
    // dio = client ?? Dio();

    if (client == null) {
      this.dio = new Dio();
    } else {
      this.dio = client;
    }
  }

  Future<List<TodoModel>> fetchTodos() async {
    final response = await dio.get(url);

    // Converte para um map de json, e um casting de jsons para lista
    final list = response.data as List;

    // Capturar cada json da lista, tranformar em Todo, e adiciona na lista de Todos
    List<TodoModel> todos = [];
    for (var json in list) {
      final todo = TodoModel.fromJson(json);
      todos.add(todo);
    }

    return todos;
    // Outra forma:
    //return list.map((json) => TodoModel.fromJson(json)).toList();
  }
}
