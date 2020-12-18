void main(){

  List<Map<String, dynamic>> usuarios = [];

  Map<String, dynamic> usuario = {
    "nome": "Lucas",
    "idade": 19,
    "cidade": "Belo Horizonte",
    "uf": "Minas Gerais",
    "altura": 1.80
  };

  // usuario["nome"] = "Lucas Ângelo";

  // print(usuario["nome"]);
  // print("\n${usuario}");

  usuarios.add(usuario);
  usuarios.add(usuario);

  print("\n ${usuarios}");

}