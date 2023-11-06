import 'package:flutter/material.dart';

class LS3 extends StatelessWidget {
  const LS3({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> name = ["SREEHARI V", "HARI SHAJI", "TINU", "AKASHY"];
    List<int> ph_no = [4344343, 4578475, 56556765, 65875558];
    List<String> profile_pic = [
      'https://iconape.com/wp-content/png_logo_vector/flutter-logo.png',
      'https://iconape.com/wp-content/png_logo_vector/flutter-logo.png',
      'https://iconape.com/wp-content/png_logo_vector/flutter-logo.png',
      'https://iconape.com/wp-content/png_logo_vector/flutter-logo.png'
    ];

    return Scaffold(
      body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(33),
                      border: Border.all(color: Colors.black),
                      color: Colors.greenAccent),
                  child: ListTile(
                    trailing: Icon(Icons.call),
                    leading: CircleAvatar(
                      child: Image(image: NetworkImage('${profile_pic[index]}')),
                    ),
                    title: Text("${name[index]}"),
                    subtitle: Text("${ph_no[index]}"),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
