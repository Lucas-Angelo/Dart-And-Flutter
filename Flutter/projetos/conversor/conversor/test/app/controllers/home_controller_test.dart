import 'package:conversor/app/controllers/home_controller.dart';
import 'package:conversor/app/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main () {

  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  final homeController = HomeController(toText: toText, fromText: fromText);
  
  List<CurrencyModel> currencies = CurrencyModel.getCurrencies();

  test(
    'Converteu corretamente de real para dólar', 
    () {
      toText.text = '2.0';
      homeController.converter();
      expect(fromText.text, '0.36');
    }
  );

  test(
    'Converteu corretamente de dólar para real usando vírgula', 
    () {
      toText.text = '2,0';
      homeController.toCurrency = currencies[1];
      homeController.fromCurrency = currencies[0];
      homeController.converter();
      expect(fromText.text, '11.26');
    }
  );

}