import 'package:flutter/material.dart';

class AppController extends ChangeNotifier { // ChangeNotifier alerta caso haja qualquer mudança
  
  static AppController instance = AppController();
  
  bool isDarkTheme = false;
  changeTheme(){
    isDarkTheme = !isDarkTheme; // Para alternar entre true e false, utiliza-se o operador de negação
    notifyListeners(); // Avisa quem estiver ouvindo pra mudar o tema
  }
}