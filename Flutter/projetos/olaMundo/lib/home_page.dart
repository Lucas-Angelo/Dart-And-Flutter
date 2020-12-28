import 'package:flutter/material.dart';
import 'package:olaMundo/app_controller.dart';

class HomePage extends StatefulWidget { // Página estática
  @override
  State<HomePage> createState() {
    return HomePageState(); // Chama a home com estado mutável
  }

}

class HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Início'),
        actions: [
          CustomSwitch(),
        ],
      ),

      body: Container(
        width: double.infinity,
        child: Column( // Existe tbm o ListView pra scroll
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Contador: $counter', style: TextStyle(fontSize: 25.00),),
              Container(
                height: 20,
              ),
              CustomSwitch(),
              Container(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.black,
                  ),
                ]
              )
            ],
          ),
      ),

      floatingActionButton: InkWell( // Botão do canto inferior direito
        onLongPress: () {
          setState(() {
            counter=0;
          });
        },
        onDoubleTap: (){
          setState(() {  
            counter+=10;
          });
        },
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          },
        ),
      )

    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
          value: AppController.instance.isDarkTheme, 
          onChanged: (value){
            AppController.instance.changeTheme();
          },);
  }
}