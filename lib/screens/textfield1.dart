import 'package:flutter/material.dart';
class Textfield14 extends StatelessWidget {
  const Textfield14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration:InputDecoration(
                  hintText:"Enter your email id" ,
                label: Text("Email id"),

                border: OutlineInputBorder()
              ) ,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: TextField(decoration: InputDecoration(
              hintText: "Enter your password",
              label: Text("Password"),
              border: OutlineInputBorder()
            ),
            ),
          ),
          SizedBox(
            width: 100,
            height: 50,
            child: ElevatedButton(onPressed: () {

            }, child: const Text("LOGIN")),
          )

        ],

      ),

    );
  }
}
