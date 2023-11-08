import 'package:flutter/material.dart';
class Question12 extends StatelessWidget {
  const Question12({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "enter"),
              textAlign: TextAlign.center,
              style: TextStyle(fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,

              ),
            ),
          )
        ],
      ),

    );
  }
}
