import 'package:flutter/material.dart';
class Question1 extends StatelessWidget {
  const Question1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.blueAccent,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)
          )
        ),
      ) ,
    );
  }
}
