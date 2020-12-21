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
        title: Text('Home Page'),
      ),

      body: Center(
        child: GestureDetector(
          child: 
            Text(
              'Contador: $counter', style: TextStyle(fontSize: 25.00),
              ),
                onLongPress: (){
                  setState(() {
                    counter = 0;
                  });
                },
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