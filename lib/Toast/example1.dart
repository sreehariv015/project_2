import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class ToastSample extends StatefulWidget {
  const ToastSample({super.key});

  @override
  State<ToastSample> createState() => _ToastSampleState();
}

class _ToastSampleState extends State<ToastSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:ElevatedButton(onPressed: () {
          Fluttertoast.showToast(msg: "Downloading",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 10,
              backgroundColor: Colors.red,
              fontSize: 16.0
          );
        }, child: const Text("Login"))
      ),
    );
  }
}
