import 'dart:ui';

import 'package:flutter/material.dart';

main(){
  runApp(Container(
    child: Center(
      child: Text(
        'Ola mundo!',
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.white, fontSize: 50.0),
      ),
    ),
  ));
}