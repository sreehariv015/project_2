import 'package:flutter/material.dart';
main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
            body: Center( child: Text("Hello"))
        )
    );
  }

}