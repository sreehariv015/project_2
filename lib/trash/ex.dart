import 'package:flutter/material.dart';
class Car123 extends StatelessWidget {
  const Car123({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor:Colors.blueAccent,
        centerTitle: true,
        title:  const Text("Black Market",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.white,
        ),),
      ),
      drawer: const Drawer(
        backgroundColor: Colors.blueAccent,
        child: Center(child: Text("Profile",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ))),

      ),
      body:const Column(
        children: [
          Padding(padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  border: OutlineInputBorder(
                  )

              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                  )

              ),
            ),
          ),


      ],)
    );
  }
}
