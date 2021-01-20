import 'package:conversor/app/components/currency_box.dart';
import 'package:conversor/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  HomeController homeController;

  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  Widget build(BuildContext context){
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 1),
          child: Column(
            children: [
              Image.asset('assets/images/logo.png', width:  150, height: 150,),
              SizedBox(height: 50,),
              CurrencyBox(
                selectedItem: homeController.toCurrency,
                controller: toText,
                items: homeController.currencies, 
                onChanged: (model) {
                  setState(() {
                    homeController.toCurrency = model;
                  });
                },
              ),
              SizedBox(height: 20,),
              CurrencyBox(
                selectedItem: homeController.fromCurrency,
                controller: fromText,
                items: homeController.currencies, 
                onChanged: (model) {
                  setState(() {
                    homeController.toCurrency = model;
                  });
                },
              ),
              SizedBox(height: 50,),
              RaisedButton(
                color: Colors.amber.withOpacity(0.9),
                onPressed: () {
                  homeController.converter();
                },
                child: SizedBox(
                    width: 150,
                    height: 50,
                    child: Center(
                        child: Text('CONVERTER', style: TextStyle(fontSize: 20),)
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}