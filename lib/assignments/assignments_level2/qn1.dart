import 'package:flutter/material.dart';
class Qn2 extends StatefulWidget {
  const Qn2({super.key});

  @override
  State<Qn2> createState() => _Qn2State();
}

class _Qn2State extends State<Qn2> {
  bool passwordVisible=false;
  var passwordController=TextEditingController();
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
              child: Image(image: AssetImage('assets/images/yoga3.png')),
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
              child:TextFormField(
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
                              : Icons.visibility_off))))
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
