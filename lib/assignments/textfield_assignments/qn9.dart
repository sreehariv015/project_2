import 'package:flutter/material.dart';
class Question9 extends StatelessWidget {
  const Question9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Enter Your Name",
              hintStyle: TextStyle(
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic

              )


            ),
          )

        ],
      ),
    );
  }
}
