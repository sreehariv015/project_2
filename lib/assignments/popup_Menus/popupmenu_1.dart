import 'package:flutter/material.dart';
class Pop1 extends StatefulWidget {
  const Pop1({super.key});

  @override
  State<Pop1> createState() => _MenuSample1State();
}

class _MenuSample1State extends State<Pop1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem(child:
              Row(children: [
                Icon(Icons.search,color: Colors.black),
                SizedBox(width: 10,),
                Text("Search")
              ],)),
              const PopupMenuItem(child:
              Row(
                children: [
                  Icon(Icons.upload,color: Colors.black),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Upload")
                ],
              )),
              const PopupMenuItem(child: Row(
                children: [
                  Icon(Icons.copy,color: Colors.black),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Copy")
                ],
              )),
              const PopupMenuItem(child: Row(
                children: [
                  Icon(Icons.exit_to_app,color: Colors.black),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Exit")
                ],

              )),

            ];
          },)
        ],
        title: const Text("Popup Menus"),
      ),

    );
  }
}