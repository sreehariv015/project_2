import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class URL_1 extends StatefulWidget {
  const URL_1({super.key});

  @override
  State<URL_1> createState() => _URL_1State();
}

class _URL_1State extends State<URL_1> {
  final url = "https://pub.dev/packages/url_launcher";
  String? printMsg = "";

  openBrowser() async {
    await launchUrl(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                openBrowser();
                //printMsg = "hello";
              });
            },
            child: Text("Open th site"),
          ),
          Text(url + " " + printMsg!)
        ],
      ),
    );
  }
}