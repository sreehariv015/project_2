import 'package:flutter/material.dart';
class MenuSample1 extends StatefulWidget {
  const MenuSample1({super.key});

  @override
  State<MenuSample1> createState() => _MenuSample1State();
}

class _MenuSample1State extends State<MenuSample1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem(child: Text("search")),
              const PopupMenuItem(child: Text("downloads")),
              PopupMenuItem(child: Text("login"))
            ];
          },)
        ],
        title: const Text("Menu"),
      ),
    );
  }
}
