import 'package:flutter/material.dart';
class Assignment10 extends StatelessWidget {
  const Assignment10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 5,

          ),
          borderRadius: BorderRadius.horizontal()
        ),
      ),

    );
  }
}
