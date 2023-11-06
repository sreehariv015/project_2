import 'package:flutter/material.dart';
class List1 extends StatelessWidget {
  const List1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          Container(
            height: 50,
            color: Colors.amber[600],
            child: Center(
              child: Text("Entry A"),
            ),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: Center(
              child: Text("Entry B"),
            ),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: Center(
              child: Text("Entry C"),
            ),
          )
        ],
      ),
    );
  }
}
