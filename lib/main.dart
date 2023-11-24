import 'package:flutter/material.dart';
import 'package:project_2/assignments/assignments_level2/qn10_profile.dart';
import 'package:project_2/assignments/assignments_level2/qn7_toggle.dart';
import 'package:project_2/assignments/assignments_level2/qn8.part1.dart';
import 'package:project_2/assignments/assignments_level2/qn9_splash_screen.dart';
import 'package:project_2/assignments/assignments_level3/qn1_settings.dart';
import 'package:project_2/trash/rrrr.dart';
import 'package:project_2/trash/settings.dart';

import 'calender/example.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //theme: ThemeData(primarySwatch: Colors.red),
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Settings1(),);
    }
    //debugShowCheckedModeBanner: false,);
  }

