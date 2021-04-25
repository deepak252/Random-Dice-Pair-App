import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
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

// class MainPage extends StatelessWidget {
//     int leftnum=4;
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             flex: 2,
//             child: FlatButton(
//               onPressed: (){
//                 leftnum=3;
//                 print(leftnum);
//               },
//               child: Image.asset("images/dice$leftnum.png"),
//             ),
            
//           ),

//           Expanded(
//             flex:2,
//             child: FlatButton(
//               onPressed: (){},
//               child: Image.asset("images/dice$leftnum.png")
//             ),
//           ),
//         ],      
//       ),
//     );
//   }
// }



class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int leftnum=1,rightnum=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftnum=Random().nextInt(6)+1;
                });
              },
              child: Image.asset("images/dice$leftnum.png"),
            ),
            
          ),

          Expanded(
            flex:2,
            child: FlatButton(
              onPressed: (){
                setState(() {
                  rightnum=Random().nextInt(6)+1;                  
                });
              },
              child: Image.asset("images/dice$rightnum.png")
            ),
          )
        ],      
      ),
    );
  }
}