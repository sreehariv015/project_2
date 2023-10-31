import 'package:flutter/material.dart';
class Scaffold1 extends StatelessWidget {
  const Scaffold1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        centerTitle: false,
        title: Text("FLUTTER",style: TextStyle(
          letterSpacing: 10,
          color: Colors.black,
        ),),


      ),
      body: Center(child: Text("HELLO WORLD",
          style: TextStyle(
            fontSize: 50,
            letterSpacing: 10,
            wordSpacing: 10,

          ))),
      floatingActionButton:FloatingActionButton(onPressed:() {

      },child: Text("Click"),
        backgroundColor: Colors.orange,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      drawer: Drawer(
        child: Text("SreeHari",style: TextStyle(
          letterSpacing: 2,
          wordSpacing: 5,
          fontStyle: FontStyle.italic,
          color: Colors.red,
        ),),
      ),
      persistentFooterButtons: [FloatingActionButton(onPressed: () {

      },),
        ElevatedButton(onPressed: () {

        }, child: Text("click",
        style: TextStyle(),))

      ],
    ) ;
  }
}
