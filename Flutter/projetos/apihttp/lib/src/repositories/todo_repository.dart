import 'package:apihttp/src/models/todo_model.dart';
import 'package:dio/dio.dart';

class TodoRepository {
  final dio = new Dio();
  final url = 'https://jsonplaceholder.typicode.com/todos';

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
  }
}
