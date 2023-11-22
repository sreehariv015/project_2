import 'package:flutter/material.dart';
class SwitchExample1 extends StatefulWidget {
  const SwitchExample1({super.key});

  @override
  State<SwitchExample1> createState() => _SwitchExample1State();
}

class _SwitchExample1State extends State<SwitchExample1> {
  bool switchOn=false;
  bool switchOf=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: const Center(child: Text("Switch Example",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),

        )),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListTile(
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(33)
              ),
              title: const Text("SwitchOn"),
              trailing: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                child: Switch(
                  value: switchOf,
                  onChanged:(value) {
                 setState(() {
                 switchOf=!switchOf;
                  });
                }, ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListTile(
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(33)
              ),
              title: const Text("SwitchOf"),
              trailing: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
                child: Switch(
                  value: switchOn,
                  activeColor: Colors.red,
                  onChanged:(value) {
                    setState(() {
                      switchOn=!switchOn;
                    });
                  }, ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
