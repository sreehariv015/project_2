import 'package:flutter/material.dart';
class Question3 extends StatelessWidget {
  const Question3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(44),
            borderSide: BorderSide(
              color: Colors.green
            )
          )
        ),
      ),
    );
  }
}
