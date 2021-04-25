import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text("Dicee"),
        ),
        body:MainPage()
      ),
    )
  );
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage("images/dice1.png"),
              ),
            ),
            
          ),

          Expanded(
            flex:2,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage("images/dice2.png"),
              ),
            ),
          )
        ],      
      ),
    );
  }
}