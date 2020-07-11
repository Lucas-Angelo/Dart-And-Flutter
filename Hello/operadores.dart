void main() {
  var sexo = 'Feminino';
  int idade = 18;
  if (sexo == 'Feminino') {
    print('Sexo é feminimo');
  }

  if (idade >= 18) {
    print("Pode ter cartão de crédito");
  } else if (idade <= 0) {
    print('Idade inválida');
  } else {
    print("Não pode ter cartão");
  }

  print('Finalizado');
}
