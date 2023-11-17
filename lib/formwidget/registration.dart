import 'package:flutter/material.dart';
class FormReg1 extends StatefulWidget {
  const FormReg1({super.key});

  @override
  State<FormReg1> createState() => _FormReg1State();
}

class _FormReg1State extends State<FormReg1> {
  final registrationkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key:registrationkey ,
          child:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "enter your name",
                label: const Text("Username"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40)
                )
              ),
              validator: (value) {
                if (value==null || value.isEmpty){
                  return 'Enter your name';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "enter your new password",
                  label: const Text("Password"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)
                  )
              ),
              validator: (value) {
                if (value==null || value.isEmpty){
                  return 'Enter your password';
                }
                return null ;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "enter new password",
                  label: const Text("Confirm Password"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40)
                  )
              ),
              validator: (value) {
                if (value==null || value.isEmpty){
                  return 'Enter your password';
                }
               return null ;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: () {
              if(registrationkey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Success")),);
              }

            }, child: const Text("Submit")),
          )
        ],

      )),
    );
  }
}
