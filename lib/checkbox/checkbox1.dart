import 'package:flutter/material.dart';

class CheckBox1 extends StatefulWidget {
  const CheckBox1({super.key});

  @override
  State<CheckBox1> createState() => _CheckBox1State();
}

class _CheckBox1State extends State<CheckBox1> {
  bool check1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Checkbox(
        value: check1,
        onChanged: (value) {
          setState(() {
            check1 = value!;
          });
        },
      ),
    );
  }
}