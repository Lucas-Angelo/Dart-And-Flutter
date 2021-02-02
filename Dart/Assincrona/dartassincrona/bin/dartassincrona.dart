import 'package:dartassincrona/dartassincrona.dart' as dartassincrona;

void main(List<String> arguments) {
  print4();
  print('1');
  print('2');
  print('3');
}

Future<void> print4() async {
  await Future.delayed(Duration(seconds: 2));
  print('4');
}

void usandoFuture() {
  var future = Future.delayed(Duration(seconds: 2));
  future.then((value) => print('4'));

  print('1');
  print('2');
  print('3');
}