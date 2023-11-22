import 'package:flutter/material.dart';
class Example12 extends StatefulWidget {
  const Example12({super.key});

  @override
  State<Example12> createState() => _Example12State();
}

class _Example12State extends State<Example12> {
  bool isSwitched=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Switch Widget"),
      ),
      body: Center(
        child: Switch(value: isSwitched,
          activeColor: Colors.green,
          onChanged:(value) {
          setState(() {
           isSwitched=!isSwitched;
          });
        },),

      ),
    );
  }
}
