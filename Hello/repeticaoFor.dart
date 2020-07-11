void main() {
  List listaProdutos = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 'arroz', 1.5, true];

  for (int i = 0; i < 10; i++) {
    print(i);
  }

  print('\n');

  for (var item in listaProdutos) {
    // Mesmo que for(int i=0; i<listaProdutos.length;i++)
    print(item); //Usar listaProdutos[i]
  }
}
