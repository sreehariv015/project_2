import 'package:flutter/material.dart';
import 'package:project_2/screens/Task.dart';
import 'package:project_2/screens/scaffold.dart';
import 'package:project_2/screens/text_widget.dart';
import 'package:project_2/screens/text_widget2.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: Scaffold2());
  }
}
