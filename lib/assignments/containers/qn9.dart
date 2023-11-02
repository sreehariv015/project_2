import 'package:flutter/material.dart';
class Assignment9 extends StatelessWidget {
  const Assignment9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
                width:5,
              style:BorderStyle.solid
          ),
          color: Colors.transparent,
            borderRadius: BorderRadius.circular(100)
        ),
      ),
    );
  }
}
