import 'package:flutter/material.dart';
class Question11 extends StatelessWidget {
  const Question11({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Column(
       children: [
         TextField(
           decoration: InputDecoration(
             prefix: const Text("left",
             style: TextStyle(
               color: Colors.black,
             ),),
             suffix: const Text("Right",style: TextStyle(
               color: Colors.black
             ),),
             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(23)
             )

           ),
         )
       ],
    ),
    );
  }
}
