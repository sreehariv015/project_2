import 'package:flutter/material.dart';
class Question8 extends StatelessWidget {
  const Question8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.lightBlue,
                hintText: "Email Id",
              label: Text("Email"),
              helperText: "enter your email id",
              helperStyle: TextStyle(
                color: Colors.lightBlue
              ),

              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12)
              )
            ),
            
          )
        ],
      ),
    );
  }
}
