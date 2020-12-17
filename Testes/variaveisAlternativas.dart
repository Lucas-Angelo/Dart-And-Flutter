void main() {
  var dadosVar; //Variável flexível, aceita vários tipos de dados
  dadosVar = 'Lucas';
  print(dadosVar);
  dadosVar = 18;
  print(dadosVar);
  dadosVar = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 'arroz', 1.5, true];
  print(dadosVar);

  print('\n');

  dynamic dadosDinamicos; //Outra variável que aceita vários tipos de dados
  dadosDinamicos = 'Lucas';
  print(dadosDinamicos);
  dadosDinamicos = 18;
  print(dadosDinamicos);
  dadosDinamicos = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 'arroz', 1.5, true];
  print(dadosDinamicos);

  //Variáveis utilizadas quando não se sabe qual será a entrada
  //Quanto mais usar essas, mas pesada a aplicação será...
}
