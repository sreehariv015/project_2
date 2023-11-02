import 'package:flutter/material.dart';
class Container_example extends StatelessWidget {
  Container_example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FLUTTER"),
      ),
      body: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green.shade200,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.green[300],
          ),
          Container(
            width: 100,
            height: 100,
            color: Color.fromARGB(100, 70, 126, 30),
          ),
          Container(
            width: 100,
            height: 100,
            color: Color.fromRGBO(95, 236, 67, 1.0),
          ),
          Container(
            width: 100,
            height: 100,
            color: Color.alphaBlend(Colors.greenAccent, Colors.green),
          ),
        ],
      ),
    );
  }
}
