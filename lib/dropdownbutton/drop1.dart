import 'package:flutter/material.dart';
class Drop1 extends StatefulWidget {
  const Drop1({super.key});

  @override
  State<Drop1> createState() => _Drop1State();
}

class _Drop1State extends State<Drop1> {
  String dropdownValue = 'Dog';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drop"),),
      body:
      DropdownButton<String>(
        // Step 3.
        value: dropdownValue,
        // Step 4.
        items: <String>['Dog', 'Cat', 'Tiger', 'Lion']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(fontSize: 30),
            ),
          );
        }).toList(),
        // Step 5.
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
      ),

    );
  }
}

