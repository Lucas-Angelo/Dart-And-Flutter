import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Início'),
      ),

      body: Container(
        height: 200,
        width: 200,
        color: Colors.black,
        child: Align( 
          alignment: Alignment.center,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
        )
      ),

      floatingActionButton: InkWell(
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