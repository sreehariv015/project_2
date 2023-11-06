import 'package:flutter/material.dart';
class ListExample1 extends StatelessWidget {
  const ListExample1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.lightBlue,
                labelText: "Address",
                icon: Icon(Icons.home,color: Colors.yellow,size: 50,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),

                    )

              ),

            ),
            SizedBox(
              width: 50,
              height: 50,
              child: ElevatedButton(onPressed: () {

              }, child:Text("Click") ),
            )
          ],
        ),
      ),
    );
  }
}
