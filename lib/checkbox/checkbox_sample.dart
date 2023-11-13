import 'package:flutter/material.dart';

class Check_1 extends StatefulWidget {
  const Check_1({super.key});

  @override
  State<Check_1> createState() => _Check_1State();
}

class _Check_1State extends State<Check_1> {

  bool flutterValue=false;
  bool dartValue=false;
  bool javaValue=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [  Checkbox(value: flutterValue, onChanged: (value) {
              setState(() {
                flutterValue=!flutterValue;
              });
            },),
              Text("Flutter")],
          ),
          Row(
            children: [
              Text("Dart"),
              Checkbox(

                focusColor: Colors.green,
                autofocus: true,
                activeColor: Colors.red,
                // hoverColor: Colors.purpleAccent,
                checkColor: Colors.black,
                value: dartValue, onChanged: (value) {
                setState(() {
                  dartValue=!dartValue;
                });
              },),
            ],
          ),
          SizedBox(
            width: 200,
            child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("Java"),
              value: javaValue, onChanged: (value) {
              setState(() {
                javaValue=!javaValue;
              });
            },),
          )



        ],
      ),
    );
  }
}
