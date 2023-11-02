import 'package:flutter/material.dart';
class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            border:Border(
              left: BorderSide(
                color: Colors.black,
                width: 20,
              ),
              top: BorderSide(
                color: Colors.black,
                width: 20,
              )
            ),

        ),
        
      ),
    );
  }
}