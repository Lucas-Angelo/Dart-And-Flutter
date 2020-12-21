import 'dart:ui';

import 'package:flutter/material.dart';

main(){
  runApp(AppWidget(texto: 'Olá mundo!!!'));
}

class AppWidget extends StatelessWidget {
  final String texto;

  const AppWidget({Key key, this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Container(
        child: Center(child: Text(texto)),
      ),
    );
  }
}