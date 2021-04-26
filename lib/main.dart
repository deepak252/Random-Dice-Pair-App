import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      showSemanticsDebugger: false,
      home: Scaffold(
        backgroundColor: Colors.cyan,
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


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int leftnum=1,rightnum=1;

  void changeDice()
  {
    setState(() {
      leftnum=Random().nextInt(6)+1;
      rightnum=Random().nextInt(6)+1;                                    
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: FlatButton(
              onPressed: changeDice,
              child: Image.asset("images/dice$leftnum.png"),
            ),
            
          ),

          Expanded(
            flex:2,
            child: FlatButton(
              onPressed: changeDice,
              child: Image.asset("images/dice$rightnum.png")
            ),
          )
        ],      
      ),
    );
  }
}