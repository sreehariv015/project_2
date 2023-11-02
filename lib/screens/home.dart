import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hello World",
        style: TextStyle(
            fontWeight: FontWeight.bold,
          fontSize: 30,
          letterSpacing: 5,
          color: Colors.black,
          fontStyle: FontStyle.italic,


        ),),


      ),
      body: Center(
        child: Text("WELCOME",style: TextStyle(fontWeight: FontWeight.bold,
         fontSize: 30,
         letterSpacing: 10,
         fontStyle: FontStyle.italic,


    )),
    ),
      drawer: Drawer(
        backgroundColor: Colors.yellow,
        child: Text("PROFILE",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.lightGreen,
        fontSize: 20,
        fontStyle: FontStyle.italic,
        ),),

      ),
    );
  }
}
