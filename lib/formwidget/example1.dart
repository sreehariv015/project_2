import 'package:flutter/material.dart';
class Form11 extends StatefulWidget {
  const Form11({super.key});

  @override
  State<Form11> createState() => _Form11State();
}

class _Form11State extends State<Form11> {
  final loginkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          key:loginkey ,
          child:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                label: const Text("Email Id"),
                hintText: "enter your email id",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40)
                )
              ),
              validator: (value) {
                if (value==null || value.isEmpty){
                  return 'enter your email id';
                }
                return null;
              },

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                label: const Text("Password"),
                  hintText: "enter your password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)
                  )
              ),
              validator: (value) {
                if (value==null || value.isEmpty){
                  return 'enter your password';
                }
                return null;
              },

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: () {
              if (loginkey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Success')),
                );
              }

            }, child: const Text("Submit")),
          )
        ],
      )),
    );
  }
}
