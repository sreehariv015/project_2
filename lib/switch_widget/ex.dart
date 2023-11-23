import 'package:flutter/material.dart';
class Eccc1 extends StatefulWidget {
  const Eccc1({super.key});

  @override
  State<Eccc1> createState() => _Eccc1State();
}

class _Eccc1State extends State<Eccc1> {
  bool dsfdg=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Switch(value: dsfdg,activeColor: Colors.green,
        onChanged: (value) {
        setState(() {
          dsfdg=!dsfdg;
        });
      },),
    );
  }
}
