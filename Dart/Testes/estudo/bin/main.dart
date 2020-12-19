import 'package:estudo/estudo.dart' as estudo;
import 'package:estudo/listaDeCompras.dart' as compra;
import 'package:estudo/maps.dart';

void main(List<String> arguments) {
  print('Hello world: ${estudo.calculate()}!');
  if(arguments.length==0){
    print('fim');
  } else if(arguments[0]=='compras') {
    compra.listaCompras();
  } else if (arguments[0]=='mapas') {
    mapas();
  } else {
    print('fim');
  }
}
