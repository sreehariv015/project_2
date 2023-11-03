import 'package:flutter/material.dart';
import 'package:project_2/assignments/containers/qn14.dart';
import 'package:project_2/assignments/containers/qn10.dart';
import 'package:project_2/assignments/containers/qn11.dart';
import 'package:project_2/assignments/containers/qn12.dart';
import 'package:project_2/assignments/containers/qn13.dart';
import 'package:project_2/assignments/containers/qn5.dart';
import 'package:project_2/assignments/containers/qn6.dart';
import 'package:project_2/assignments/containers/qn7.dart';
import 'package:project_2/assignments/containers/qn8.dart';
import 'package:project_2/assignments/containers/qn9.dart';
import 'package:project_2/screens/Task.dart';
import 'package:project_2/screens/container1.dart';
import 'package:project_2/screens/container2.dart';
import 'package:project_2/screens/home.dart';
import 'package:project_2/screens/row_col1.dart';
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
    return  MaterialApp(home:Assignment8() );
  }
}
