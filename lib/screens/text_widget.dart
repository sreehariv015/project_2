import 'package:flutter/material.dart';
class Textsample1 extends StatelessWidget {
  String _name="sreehari";
  Textsample1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("hello $_name" ,style:TextStyle(fontSize: 50,
        color:Colors.red,
          backgroundColor: Colors.blue)

      ))
    );
  }
}
