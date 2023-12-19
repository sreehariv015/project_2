import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_2/assignments/quiz_app/quizapp.dart';
import 'package:project_2/assignments/sensor_data/sensor_sample.dart';
import 'package:project_2/assignments/todo_app/todoapp1.dart';
import 'package:project_2/assignments/video/video_sample.dart';
import 'package:project_2/state_management/Gextx/login/view/loginhome.dart';
import 'package:project_2/state_management/setstate/counterapp.dart';
import 'package:project_2/trash/provider_sample/controller/controller.dart';
import 'package:project_2/trash/provider_sample/view/counter_pdr.dart';
import 'package:provider/provider.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return
      // ChangeNotifierProvider(
      // create: (context) => Counter(),
      // child:
       MaterialApp(
        //theme: ThemeData(primarySwatch: Colors.red),
       // theme: ThemeData(primarySwatch: Colors.purple),
        debugShowCheckedModeBanner: false,
        home: VideoSample1(),);
     // );
    }
    //debugShowCheckedModeBanner: false,);
  }

