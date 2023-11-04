import 'package:flutter/material.dart';
class Question4 extends StatelessWidget {
  const Question4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
            )
          ),
        ),
      ),


    );
  }
}
