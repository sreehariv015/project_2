import 'package:flutter/material.dart';
class RowColumn1 extends StatelessWidget {
  RowColumn1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
          Container(height: 100,
            width: 100,
            color: Colors.black,

          ),
      Container(height: 100,
      width: 100,
      color: Colors.orange,
      ),
      Container(height: 100,
        width: 100,
        color: Colors.yellowAccent,
      ),
      Container(height: 100,
        width: 100,
        color: Colors.redAccent,
      ),
      Container(height: 100,
        width: 100,
        color: Colors.greenAccent,
      ),
      Container(height: 100,
        width: 100,
        color: Colors.pinkAccent,
      ),
      Container(height: 100,
        width: 100,
        color: Colors.deepOrange,
      )
        ],
      ),

    );
  }
}
