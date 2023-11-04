import 'package:flutter/material.dart';
class Question5 extends StatelessWidget {
  const Question5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(50),borderSide: BorderSide(width: 6))

            ),
          )
        ],
      )

    );
  }
}
