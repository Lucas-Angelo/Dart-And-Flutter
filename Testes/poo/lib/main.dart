import 'package:poo/src/pessoa.dart';

void main(List<String> arguments) {
  Pessoa pessoa;
  pessoa = Pessoa(nome: 'Lucas', idade: 19, sexo: 'M', altura: 1.80, peso: 62.3);
  print('${pessoa.nome} ${pessoa.idade} ${pessoa.sexo} ${pessoa.altura} ${pessoa.peso}');
  
}
