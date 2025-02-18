import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();

}
class _CalculatorState extends State<Calculator> {


  Widget calcbutton( String btntxt, Color btncolor, Color txtcolor)
  {
      return Container(
       child: ElevatedButton(
           onPressed: ()
           {

           },
         style: ElevatedButton.styleFrom(
           shape: const CircleBorder(),
           backgroundColor: btncolor,
           padding: const EdgeInsets.all(20),
           minimumSize: const Size(80, 80),
         ),
           child: Text(btntxt,
           style: TextStyle(
             fontSize: 35,
             color: txtcolor,
           ),
           ),
       ),

      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('Dart Calculator',style: TextStyle(fontSize: 20,color: Colors.tealAccent,fontStyle: FontStyle.italic, fontWeight:FontWeight.bold),
        ),
        backgroundColor: Colors.teal[800],
        centerTitle: true,
       ),
      backgroundColor: Colors.cyan[900],
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              alignment:Alignment.bottomRight,
              child: Text('0',
                style: TextStyle(fontSize: 90,
                  color: Colors.yellow,
                  fontWeight:FontWeight.bold, ),
              ),
            ),
            Row(
              mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('AC', Colors.orange, Colors.white),
                calcbutton('+/-', Colors.white, Colors.teal),
                calcbutton('%', Colors.white, Colors.teal),
                calcbutton('/', Colors.white, Colors.teal),
              ],
            ),
            const SizedBox(height: 10,),

            Row(
              mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('7', Colors.white, Colors.teal),
                calcbutton('8', Colors.white, Colors.teal),
                calcbutton('9', Colors.white, Colors.teal),
                calcbutton('x', Colors.white, Colors.teal),
              ],
            ),
            const SizedBox(height: 10,),

            Row(
              mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('4', Colors.white, Colors.teal),
                calcbutton('5', Colors.white, Colors.teal),
                calcbutton('6', Colors.white, Colors.teal),
                calcbutton('-', Colors.white, Colors.teal),
              ],
            ),
            const SizedBox(height: 10,),

            Row(
              mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('1', Colors.white, Colors.teal),
                calcbutton('2', Colors.white, Colors.teal),
                calcbutton('3', Colors.white, Colors.teal),
                calcbutton('+', Colors.white, Colors.teal),
              ],
            ),
            const SizedBox(height: 10,),

            Row(
              mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
              children: [
                calcbutton('[  ]', Colors.white, Colors.teal),
                calcbutton('0', Colors.white, Colors.teal),
                calcbutton('.', Colors.white, Colors.teal),
                calcbutton('=', Colors.green[700]!, Colors.white),
              ],
            ),
            const SizedBox(height: 10,),

          ],
        ) ,
      )
    );
  }
}
