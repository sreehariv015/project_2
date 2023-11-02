import 'package:flutter/material.dart';

class Container1 extends StatelessWidget {
  Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              image:DecorationImage(image: NetworkImage('https://th.bing.com/th/id/OIP.KABhol5JHNKrSm_9iJvGbAHaHa?pid=ImgDet&rs=1'))
          ),
          // color: Colors.blue,

          child: Text("Hello", style: TextStyle(
            backgroundColor: Colors.red,
            fontSize: 20

          ),),
        ),
      ),
    );
  }
}
