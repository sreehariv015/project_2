import 'package:flutter/material.dart';

class CheckBox2 extends StatefulWidget {
  const CheckBox2({super.key});

  @override
  State<CheckBox2> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox2> {
  bool checkbox3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CheckboxListTile(
          value: checkbox3,
          controlAffinity: ListTileControlAffinity.trailing,
          onChanged: (value) {
            setState(() {
              checkbox3 = value!;
            });
          },
          title: Text("Do you really want to learn Flutter?"),
        ));
  }
}