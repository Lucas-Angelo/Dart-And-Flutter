import 'package:conversor/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeController {

  List<CurrencyModel> currencies;

  TextEditingController fromText = TextEditingController();
  TextEditingController toText = TextEditingController();
  
  CurrencyModel fromCurrency;
  CurrencyModel toCurrency;

  HomeController() {
    currencies = CurrencyModel.getCurrencies();
    fromCurrency = currencies[0];
    toCurrency = currencies[1];
  }

  void converter() {
    String text = toText.text;
    double value = double.tryParse(text) ?? 1.0;
    double returnValue = 0;

    if(fromCurrency.name == 'Real') {
      returnValue = value * toCurrency.real;
    } else if(fromCurrency.name == 'Dolar') {
      returnValue = value * toCurrency.dolar;
    } else if(fromCurrency.name == 'Euro') {
      returnValue = value * toCurrency.euro;
    } else if(fromCurrency.name == 'Bitcoin') {
      returnValue = value * toCurrency.bitcoin;
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }

}