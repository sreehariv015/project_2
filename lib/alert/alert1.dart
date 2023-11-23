import 'package:flutter/material.dart';
import 'package:project_2/assignments/assignments_level2/qn1.dart';
import 'package:project_2/assignments/assignments_level2/qn3.0.dart';

class Alert1 extends StatefulWidget {
  const Alert1({super.key});

  @override
  State<Alert1> createState() => _Alert1State();
}

class _Alert1State extends State<Alert1> {
  showAlert() {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Do you want to move to next page"),
          actions: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
                      return Qn30();
                      },), (route) => false);

                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (context) {
                    //     return Qt1();
                    //   },
                    // ));
                  });
                },
                child: Text("Yes")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                child: Text("No"))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    showAlert();
                  });
                },
                child: const Text("Done")),
          ),
        ],
      ),
    );
  }
}