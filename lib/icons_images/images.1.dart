import 'package:flutter/material.dart';
class Img12 extends StatefulWidget {
  const Img12({super.key});

  @override
  State<Img12> createState() => _Img12State();
}

class _Img12State extends State<Img12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(image: AssetImage('assets/images/profile_pic.jpg')),
      ),
    );
  }
}
