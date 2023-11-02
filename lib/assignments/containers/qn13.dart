import 'package:flutter/material.dart';
class Assignment13 extends StatelessWidget {
  const Assignment13({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 150,
        height: 150,
        child: Text("Circular Container"),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,

        ),

      ),
    );
  }
}