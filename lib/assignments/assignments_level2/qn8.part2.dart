import 'package:flutter/material.dart';
import 'package:project_2/assignments/assignments_level2/qn8.part1.dart';
class Qn82 extends StatefulWidget {
  const Qn82({super.key});

  @override
  State<Qn82> createState() => _Qn2State();
}

class _Qn2State extends State<Qn82> {
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
      body:  SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30,),
            const Center(
              heightFactor: 0.80,
              child: Image(image: AssetImage('assets/images/yoga4.png')),
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
                    color: Colors.red

                ),
                child: TextButton(onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return Qn81();
                  },));
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
