import 'package:flutter/material.dart';
class TextSample2 extends StatelessWidget {
   TextSample2({super.key});

  @override
  Widget build(BuildContext context) {
    var paint=Paint();
    paint.color=Colors.black54;
    paint.style=PaintingStyle.fill;
    return  Scaffold(
      body: Center(
        child: Text("My Text",
          style: TextStyle(
            fontSize: 100,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.italic,
              letterSpacing: 10,
              wordSpacing: 30,
          foreground: paint
          ))

      ));
  }
}
