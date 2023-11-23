import 'package:flutter/material.dart';
import 'package:project_2/trash/rrrr.dart';

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
      home: PasswordField(),);
    }
    //debugShowCheckedModeBanner: false,);
  }

