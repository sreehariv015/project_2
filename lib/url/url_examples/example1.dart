import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class UrlExample1 extends StatefulWidget {
  const UrlExample1({super.key});

  @override
  State<UrlExample1> createState() => _UrlExample1State();
}

class _UrlExample1State extends State<UrlExample1> {

 openBrowser() async{
   var url="https://www.freepik.com/";
   await launchUrl(Uri.parse(url));
 }
 open()async{
   print("hello");
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(onPressed: () {
              setState(() {
                openBrowser();
              });
            }, child: const Text("button1")),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(onPressed: () {

              open();
            }, child: const Text("button2")),
          ),
        ],
      ),
    );

  }
}

