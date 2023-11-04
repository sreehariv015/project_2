import 'package:flutter/material.dart';
class Question2 extends StatelessWidget {
  const Question2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: TextField(
          decoration: InputDecoration(
errorBorder: OutlineInputBorder(
  borderSide: BorderSide(
    color: Colors.blue
  )
)
          ),
        ),
      ),
    );
  }
}
