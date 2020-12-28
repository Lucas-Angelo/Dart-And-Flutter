import 'package:flutter/material.dart';
import 'package:olaMundo/app_controller.dart'; // Pacote com widge multi render da minh app
import 'package:olaMundo/home_page.dart';
import 'package:olaMundo/login_page.dart'; // Conteúdo do app

class AppWidget extends StatelessWidget { // Widget estático da aplicação programada e visual
  @override
  Widget build(BuildContext context) { // Construtor do widget
    return AnimatedBuilder( // Função do app para poder atualiza-lo
      animation: AppController.instance, // Instância que vai ouvir quando houver modificação, para animar
      builder: (context, child) { // Construtor 
        return MaterialApp( // Função para criar o básico de um app 
        theme: ThemeData( // MaterialApp possui tema de pode ser modificado
            primarySwatch: Colors.red,
            brightness: AppController.instance.isDarkTheme // Operador ternário que controla se é dark theme usando o controller geral
            ? Brightness.dark 
            : Brightness.light,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(),
          '/home': (context) => HomePage(),
        }, // Chama a home atualizada
        );
      },
    );
  }
}