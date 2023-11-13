import 'package:flutter/material.dart';
class IconSample1 extends StatefulWidget {
  const IconSample1({super.key});

  @override
  State<IconSample1> createState() => _IconSample1State();
}

class _IconSample1State extends State<IconSample1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Icon(Icons.alarm,
          color: Colors.greenAccent,
          size: 200,
          weight: 50,
          textDirection: TextDirection.rtl,),
          Text("Alarm",
            style: TextStyle(
              color: Colors.blueAccent,


          ),)
        ],
      ),
    );
  }
}
