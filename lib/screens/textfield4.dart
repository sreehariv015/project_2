import 'package:flutter/material.dart';
class TextExample3 extends StatelessWidget {
  const TextExample3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TextField(
        keyboardType: TextInputType.number,
      ),
    );
  }
}
