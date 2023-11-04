import 'package:flutter/material.dart';
class Question6 extends StatelessWidget {
  const Question6({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintStyle: TextStyle(
                color: Colors.red
              ),
             hintText: "Password"
            ),
          )

        ],
      ),
    );
  }
}
