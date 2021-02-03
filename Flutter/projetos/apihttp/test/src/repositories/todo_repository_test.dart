import 'package:apihttp/src/repositories/todo_repository.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final repository = TodoRepository();

  test('Deve trazer uma lista de TodModel', () async {
    final list = await repository.fetchTodos();
    expect(list[1].title, 'quis ut nam facilis et officia qui');
  });
}
