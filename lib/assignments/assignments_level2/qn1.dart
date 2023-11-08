import 'package:flutter/material.dart';
class Qn1 extends StatelessWidget {
  const Qn1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple,
        centerTitle: false,
        title: const Text("Yoga Bliss"),
      ),
     body:  Column(
       children: [
         Padding(padding: EdgeInsets.all(8.0),
         child: TextField(
           decoration: InputDecoration(
             hintText: "Enter your email",
             label: const Text("Email"),
             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(30)
             )
                 
           ),
         ),
         ),
         Padding(padding: EdgeInsets.all(8.0),
           child: TextField(
             decoration: InputDecoration(
                 hintText: "Enter your password",
                 label: const Text("Password"),
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30)
                 )

             ),
           ),
         ),
         TextButton(onPressed: () {

         }, child: const Text("Forgot Password",style: TextStyle(
           color: Colors.purple
         ),)),
         ElevatedButton(onPressed: () {

         }, child: Text("Login")),
         TextButton(onPressed: () {

         }, child: const Text("New user?",style: TextStyle(
           color: Colors.purple,
         ),))
       ],
     ), 
    );
  }
}
