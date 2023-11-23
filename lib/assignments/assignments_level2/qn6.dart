import 'package:flutter/material.dart';
class Qn6 extends StatefulWidget {
  const Qn6({super.key});

  @override
  State<Qn6> createState() => _Qn2State();
}

class _Qn2State extends State<Qn6> {
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
            const SizedBox(height: 30,),
            const Center(
              heightFactor: 0.80,
              child: Image(image: AssetImage('assets/images/yoga5.png')),
            ),
            const SizedBox(height: 30,),
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
                    hintText: "Enter your new password",
                    label: Text("Password"),
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
                    hintText: "Enter your new password",
                    label: Text("Confirm Password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero
                    )

                ),
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 250,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: Colors.purple

                ),
                child: TextButton(onPressed: () {

                }, child: const Text("Register",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),)),
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(onPressed: () {

              }, child: const Text("Already have an account? Login",style: TextStyle(
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
