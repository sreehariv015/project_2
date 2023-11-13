import 'package:flutter/material.dart';
class CheckBox2 extends StatefulWidget {
  const CheckBox2({super.key});

  @override
  State<CheckBox2> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox2> {

  bool checkbox2=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CheckboxListTile(value: checkbox2, onChanged: (value) {
          setState(() {
            checkbox2=value!;
          });
        },
          title: Text("Do you really want to learn Flutter?"),
        )
    );
  }
}