import 'package:flutter/material.dart';
class Container14 extends StatelessWidget {
  Container14({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Row(
        children: [
          Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(100, 70, 126, 30)

            ),
           child: Text("Text"
             ,style: TextStyle(
             fontWeight: FontWeight.bold,
               color: Colors.purple


           ),),

          ),
          Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue

            ),
            child: Text("Text",style: TextStyle(
              fontStyle: FontStyle.italic,


            ),),

          ),
          Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink

            ),
            child: Text("Text",style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 20,
              color: Colors.lightBlue

            ),),

          ),
        ],
      ),
    );
  }
}
