import 'package:flutter/material.dart';
class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              border:Border(
                left: BorderSide(
                  color: Colors.black,
                ),
                top: BorderSide(
                  color: Colors.black,
                )
              ),

          ),

        ),
      ),
    );
  }
}