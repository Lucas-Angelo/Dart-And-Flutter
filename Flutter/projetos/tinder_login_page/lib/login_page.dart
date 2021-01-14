import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tinder_login_page/HexColor.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Widget _body(){
    return SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 250,
                    height: 150,
                    child: 
                      Image.asset('assets/images/tinderIcon.png'),
                  ),
                  Container(height: 30,),

                  Container(
                    color: HexColor("FE3C72"),
                      child: Column(
                        children: [
                          Text('Location Changer', style: TextStyle(fontSize: 25.00, color: Colors.white),),
                          Container(
                            height: 10,
                          ),
                          Text('Plugin App for Tinder', style: TextStyle(fontSize: 16.00, color: Colors.white),),
                          Container(
                            height: 35,
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.transparent)),
                            textColor: HexColor("FE3C72"),
                            color: Colors.white,
                            onPressed: (){}, 
                            child: Container(
                                width: 250,
                                height: 50,
                                alignment: Alignment.center,
                                child: Text('Login with Facebook', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.00),)
                              ),
                          ),
                        ],
                      ),
                  ),

                ],
              ),
            ),
          ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _body(),
        ],
      ),
      backgroundColor: HexColor("FE3C72"),
    );
  }
}