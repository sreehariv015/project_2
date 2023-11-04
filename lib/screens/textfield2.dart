import 'package:flutter/material.dart';
class TextExample1 extends StatelessWidget {
  const TextExample1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              maxLines: 1,
              maxLength: 20,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.blueAccent,
                hintText: "Enter your username",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30)
                )
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              maxLines: 1,
              maxLength: 10,
              cursorColor: Colors.black,
              style: const TextStyle(
                color: Colors.white
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.blueAccent,
                hintText: "Enter your password",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius:BorderRadius.circular(50)
                )
              ),

            ),
          ),
          ElevatedButton(onPressed: () {

          }, child: const Text("Login"))
        ],
      ),


    );
  }
}
