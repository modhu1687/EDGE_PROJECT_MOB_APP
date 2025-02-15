import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();

}
class _CalculatorState extends State<Calculator> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('Dart Calculator',style: TextStyle(fontSize: 20,color: Colors.tealAccent,fontStyle: FontStyle.italic, fontWeight:FontWeight.bold),
        ),
        backgroundColor: Colors.teal[800],
        centerTitle: true,
       ),
      backgroundColor: Colors.cyan[100],
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            color: Colors.greenAccent[200],
            padding: const EdgeInsets.all(20),
             alignment:Alignment.bottomRight,
            child: Text('0',
              style: TextStyle(fontSize: 70,
                color: Colors.blueGrey[330],
                fontWeight:FontWeight.bold, ),
            ),
          ),
          Row(

             children: [
              Container(
               
              ),

             ],
          ),
        ],
      ) ,
    );
  }
}
