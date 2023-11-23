import 'package:flutter/material.dart';
import 'package:project_2/assignments/assignments_level2/qn2.dart';
import 'package:project_2/assignments/assignments_level2/qn3.0.dart';
import 'package:project_2/assignments/assignments_level2/qn3.1.dart';
import 'package:project_2/switch_widget/ex.dart';
import 'package:project_2/switch_widget/switch2.dart';

import 'calender/example.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Qn2(),);
    }
    //debugShowCheckedModeBanner: false,);
  }

