import 'package:flutter/material.dart';
class Qn1 extends StatelessWidget {
  const Qn1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple,
        centerTitle: false,
        title: const Text("Yoga Bliss",
        style: TextStyle(
          fontWeight: FontWeight.bold,

        ),),
      ),
     body:  Column(
       children: [
         const Center(
           heightFactor: 0.80,
           child: Image(image: NetworkImage('https://static.vecteezy.com/system/resources/previews/000/626/599/original/yoga-health-logo-vector-template.jpg')),
         ),
         
         Padding(padding: const EdgeInsets.all(8.0),
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
         Padding(padding: const EdgeInsets.all(8.0),
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
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextButton(onPressed: () {

           }, child: const Text("Forgot Password",style: TextStyle(
             color: Colors.purple
           ),)),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             color: Colors.purple,
             child: TextButton(onPressed: () {

             }, child: const Text("Login",style: TextStyle(
               color: Colors.white
             ),)),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextButton(onPressed: () {

           }, child: const Text("New user? Create new account",style: TextStyle(
             color: Colors.purple,
           ),)
           ),
         ),
       ],
     ), 
    );
  }
}
