void main() {
  Map usuario = {
    'nome': 'Lucas',
    'idade': 18,
    'altura': 1.81,
    'Lucas-Angelo': true,
    1: 'Tipo inteiro',
  };
  print(usuario);
  print(usuario.length); //Mostra a quantidade de dados
  print(usuario['nome']); //Buscar um dado específico
  print(usuario[1]); //Forma de chamar um dado específico não string
}
