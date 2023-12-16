import 'package:flutter/material.dart';
import 'package:project_2/assignments/quiz_app/quizapp.dart';
import 'package:project_2/state_management/Gextx/login/view/loginhome.dart';

import 'assignments/quiz_app/quizapp2.0.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //theme: ThemeData(primarySwatch: Colors.red),
     // theme: ThemeData(primarySwatch: Colors.purple),
      home: const LoginHome(),);
    }
    //debugShowCheckedModeBanner: false,);
  }

