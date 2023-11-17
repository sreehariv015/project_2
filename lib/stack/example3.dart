import 'package:flutter/material.dart';
class Stack31 extends StatefulWidget {
  const Stack31({super.key});

  @override
  State<Stack31> createState() => _Stack11State();
}
class _Stack11State extends State<Stack31> {
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
                color: Colors.yellow,
                child: const Text("One",style: TextStyle(
                    color: Colors.white
                ),),
              ),
              Positioned(
                top: 80,
                left: 80,
                child:Container(
                width: 250,
                height: 250,
                color: Colors.redAccent,
                child: const Text("Two",style: TextStyle(color: Colors.white
                ),),
              ), ),
              Positioned(
                top: 20,
                left: 20,
                child:Container(
                  width: 200,
                  height: 200,
                  color: Colors.black,
                  child: const Text("Two",style: TextStyle(color: Colors.white
                  ),),
                ), )
         ,
            ],
          ),
        ),
      ),
    );
  }
}
