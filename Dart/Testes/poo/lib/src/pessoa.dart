import 'humano.dart';

class Pessoa extends Humano {
  String nome;
  int idade;
  String sexo;

  Pessoa({this.nome, this.idade, this.sexo, altura, peso}): super(altura: altura, peso: peso);

}