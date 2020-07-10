void main() {
  tipoString();
  tipoInt();
  tipoDouble();
  tipoBoleano();
}

void tipoString() {
  String nome = "Lucas"; //Dart: Linguagem fortemente tipada
  //nome = "Ângelo"; //Muda pra Ângelo o nome
  print(nome);
}

void tipoInt() {
  int idade = 18; //Não da pra colocar número decimais, tipo 18.5(isso é double)
  print(idade);
}

void tipoDouble() {
  double altura = 1.81; //Para valores reais/decimais
  print(altura);
}

void tipoBoleano() {
  bool LucasDev = true; //True ou false para o dado
  print(LucasDev);
}
