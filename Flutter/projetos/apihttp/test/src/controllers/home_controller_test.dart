import 'package:apihttp/src/controllers/home_controller.dart';
import 'package:apihttp/src/models/todo_model.dart';
import 'package:apihttp/src/repositories/todo_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class TodoRepositoryMock extends Mock implements TodoRepository {}

main() {
  final repository = TodoRepositoryMock();

  final controller = HomeController(repository);
  test('Deve preencher variável todos', () async {
    when(repository.fetchTodos()).thenAnswer((_) async => [TodoModel()]);

    await controller.start();
    expect(controller.todos.isNotEmpty, true);
  });
}
