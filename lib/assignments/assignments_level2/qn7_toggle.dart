import 'package:flutter/material.dart';

class Qt17 extends StatefulWidget {
  const Qt17({super.key});

  @override
  State<Qt17> createState() => _Qt6State();
}

class _Qt6State extends State<Qt17> {
  bool passwordVisible = false;
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Yoga Bill"),
        ),
        body: ListView(
          children: [
            const Image(image: AssetImage('assets/images/yoga.jpg')),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    hintText: "Email"),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                    controller: passwordController,
                    obscureText: !passwordVisible,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(15))),
                        hintText: "Password",
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                            icon: Icon(passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off)))))
          ],
        ));
  }
}