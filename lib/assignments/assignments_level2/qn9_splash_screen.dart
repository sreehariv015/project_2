import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_2/assignments/assignments_level2/qn2.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Timer(
      const Duration(seconds: 8),
      () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Qn2(),)),
    );
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Center(
            child: Image(image: AssetImage('assets/images/yoga.jpg'),
              height: 200,
            ),
          ),
          CircularProgressIndicator(
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
