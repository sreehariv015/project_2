import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/logingetx.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final LoginGetx _loginController=Get.put(LoginGetx());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("${_loginController.name}"),
      ),
    );
  }
}

