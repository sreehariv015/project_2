import 'package:flutter/material.dart';
class Qn2 extends StatefulWidget {
  const Qn2({super.key});

  @override
  State<Qn2> createState() => _Qn2State();
}

class _Qn2State extends State<Qn2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(//backgroundColor: Colors.red,
        centerTitle: false,
        title: const Text("Yoga Bliss",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white

          ),),
      ),
      backgroundColor: Colors.white,
      body:  SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 90,),
            const Center(
              heightFactor: 0.80,
              child: Image(image: AssetImage('assets/images/yoga2.png')),
            ),
            const SizedBox(height: 60,),
            Padding(padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter your email",
                    label: Text("Email"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero
                    )

                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    hintText: "Enter your password",
                    label: Text("Password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero
                    )

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(onPressed: () {

              }, child: const Text("Forgot Password",style: TextStyle(
                  //color: Colors.red
              ),)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  color: Colors.red

                ),
                child: TextButton(onPressed: () {

                }, child: const Text("Login",style: TextStyle(
                    color: Colors.white,
                  fontSize: 20
                ),)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(onPressed: () {

              }, child: const Text("New user? Create new account",style: TextStyle(
                //color: Colors.red,
              ),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
