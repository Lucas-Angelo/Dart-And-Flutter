import 'package:conversor/app/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
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
              CurrencyBox(),
              SizedBox(height: 20,),
              CurrencyBox(),
              SizedBox(height: 50,),
              RaisedButton(
                color: Colors.amber.withOpacity(0.9),
                onPressed: () {},
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