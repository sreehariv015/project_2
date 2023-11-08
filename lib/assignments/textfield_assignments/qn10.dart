import 'package:flutter/material.dart';
class Question10 extends StatelessWidget {
  const Question10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
           decoration: InputDecoration(
             prefix: const Icon(Icons.home),
             border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(22))

           ),
          )
        ],
      ),
    );
  }
}
