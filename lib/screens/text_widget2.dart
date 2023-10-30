import 'package:flutter/material.dart';
class TextSample2 extends StatelessWidget {
   TextSample2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text("My Text View",
          style: TextStyle(
            fontSize: 70,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.italic,
              letterSpacing: 10,
              wordSpacing: 30,))

      ));
  }
}
