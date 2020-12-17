void main() {
  String status = 'PENDENTE';

  switch (status) {
    case 'ABERTO':
      print('O seu pedido esta aberto!');
      break;
    case 'FECHADO':
      print('O seu pedido esta fechado!');
      break;
    case 'PENDENTE':
      print('O seu pedido esta pendente!');
      break;
    case 'ENCERRADO':
      print('O seu pedido esta encerrado!');
      break;
    default: //Caso não se encaixe em nenhum case acima, tipo else
      print('Status nao verificado');
  }
}
