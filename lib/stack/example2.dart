import 'package:flutter/material.dart';
class Stack21 extends StatefulWidget {
  const Stack21({super.key});

  @override
  State<Stack21> createState() => _Stack11State();
}
class _Stack11State extends State<Stack21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 300,
        height: 300,
        child: Center(
          child: Stack(
            children: [
              Container(
                width: 300,
                height: 300,
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.topRight,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'))

                ),
                child: const Text("One",style: TextStyle(
                    color: Colors.white
                ),),
              ),
              Container(
                width: 250,
                height: 250,
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'))

                ),
                child: const Text("Two",style: TextStyle(color: Colors.white
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
