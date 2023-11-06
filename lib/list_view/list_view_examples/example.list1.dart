import 'package:flutter/material.dart';
class LS1 extends StatelessWidget {
  const LS1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 50,
            color: Colors.pink[600],
            child: Center(
                child: Text("A")
            ),
          ),
      Container(
        height: 50,
        color: Colors.purple[300],
        child: Center(
            child: Text("B")
        ),
      ),
      Container(
        height: 50,
        color: Colors.red[400],
        child: Center(
            child: Text("C")
        ),
      )

      ],

      ),
    );
  }
}
