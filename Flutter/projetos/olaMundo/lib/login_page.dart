import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String email = '';
  String password = '';

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
                    width: 150,
                    height: 200,
                    child: 
                      Image.asset('assets/images/logo.png'),
                  ),
                  Container(height: 30,),

                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 12, top: 20, bottom: 12),
                      child: Column(
                        children: [
                          TextField(
                          onChanged: (text){
                            email = text;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                          ),
                        ),
                        Container(height: 5.0,),
                        TextField(
                          onChanged: (text){
                            password = text;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                          ),
                        ),
                        Container(height: 10.0,),
                        RaisedButton(
                          textColor: Colors.white,
                          color: Colors.grey,
                          onPressed: (){
                            if(email=='lcs2001_@hotmail.com' && password == '123'){
                              print('correto');
                              Navigator.of(context).pushReplacementNamed('/home');
                            }
                            else{
                              print('login invalido');
                            }
                          }, 
                          child: Container(
                              width: double.infinity,
                              child: Text('Entrar', textAlign: TextAlign.center,)
                            ),
                        ),
                        ],),
                    )
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
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset('assets/images/background.jpg', fit: BoxFit.cover,)
          ),
          Container(color: Colors.black.withOpacity(0.3)),
          _body(),
        ],
      ),
    );
  }
}