import 'package:flutter/material.dart';
class Stack11 extends StatefulWidget {
  const Stack11({super.key});

  @override
  State<Stack11> createState() => _Stack11State();
}
class _Stack11State extends State<Stack11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 300,
        height: 300,
        child: Center(
          child: Stack(
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.red,
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.topRight,
                child: const Text("One",style: TextStyle(
                  color: Colors.white
                ),),
              ),
              Container(
                width: 250,
                height: 250,
                color: Colors.black,
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomCenter,
                child: const Text("Two",style: TextStyle(color: Colors.white
                ),),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
