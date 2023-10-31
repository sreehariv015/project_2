import 'package:flutter/material.dart';
class Scaffold2 extends StatelessWidget {
  const Scaffold2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: Text("FLUTTER PROJECT",style: TextStyle(
          letterSpacing: 5,
          color: Colors.black,
        ),),
      ),
      body: Center(
        child: Text("FLUTTER PROJECT WITH SCAFFOLD",
          style: TextStyle(fontWeight: FontWeight.bold,
          color:Colors.black,
          fontSize: 20,
          ),),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      },child: Text("ADD",style: TextStyle(
        color: Colors.black,
      ),),
        backgroundColor: Colors.white,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      drawer: Drawer(
        backgroundColor: Colors.greenAccent,
        child: Text("PROFILE",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
          fontWeight: FontWeight.bold,


        ),),
      ),
      persistentFooterButtons: [

        ElevatedButton(onPressed: () {

        },style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white
        ), child: Text("NEXT",
        style: TextStyle(
          color: Colors.black,
        ),)),ElevatedButton(onPressed: () {

        },style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white
        ), child: Text("PREVIOUS",
          style: TextStyle(
            color: Colors.black,
          ),))]

    );
  }
}
