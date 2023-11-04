import 'package:flutter/material.dart';
class TextExample2 extends StatelessWidget {
  const TextExample2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(
            color: Colors.blue,
          ),
              hintText: "Enter your name"
        ),

      ),
    );
  }
}
