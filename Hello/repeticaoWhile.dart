void main() {
  int idade = 10;

  while (idade < 18) {
    print(idade.toString() + ' é menor que dezoite anos');
    idade++;
  }

  //Do while executa pelo menos uma vez
  do {
    print('Teste Do While');
    idade += 20;
  } while (idade < 60); //Se colocar false aqui, aparece o teste uma vez
}
