import 'dart:io';

List<String> produtos = [];

void listaCompras(){
  bool condicao = true;
  print("Para finalizar, digite: sair");
  print("Para imprimir a lista, digite: imprimir");
  print("Para remover da lista, digite: remover");
  while (condicao){
    stdout.write("Adicione um produto: ");
    String text = stdin.readLineSync();
    if(text.toLowerCase()=="sair")
      condicao = false;
    else if(text.toLowerCase()=="imprimir")
      imprimir();
    else if(text.toLowerCase()=="remover")
      remover();
    else
      produtos.add(text);
  }
  print("\x1B[2J\x1B[0;0H");
}

void imprimir(){
  if(produtos.length==0)
    print("Lista vazia.");
  else
    for(int i=0; i<produtos.length; i++)
      print("Produto #${i}: ${produtos[i]}");
}

void remover(){
  if(produtos.length==0){
    print("Lista vazia.");
  } else {
    print("Menu de opções:");
    print("1 - Para remover por nome");
    print("2 - Para remover por índice");
    stdout.write("Digite sua opção: ");
    int opcao = int.parse(stdin.readLineSync());
    if(opcao==1){
      stdout.write("Digite o que deseja remover: ");
      String text = stdin.readLineSync();
      produtos.remove(text);
    } else {
      stdout.write("Digite o indice que deseja remover: ");
      int indice = int.parse(stdin.readLineSync());
      produtos.removeAt(indice);
    }    
  }
}