import 'package:flutter/material.dart';
class List2 extends StatelessWidget {
  const List2({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> name=["Akshay","Biby","Sreehari","Tinu"];
    List<int> phn=[555555,87884887,548484484,848484848];
    List<String> profile=['https://www.ninjaonlinedating.com/blog/wp-content/uploads/2019/08/SmileModifiedKRAK.jpg','https://www.ninjaonlinedating.com/blog/wp-content/uploads/2019/08/SmileModifiedKRAK.jpg','https://www.ninjaonlinedating.com/blog/wp-content/uploads/2019/08/SmileModifiedKRAK.jpg','https://www.ninjaonlinedating.com/blog/wp-content/uploads/2019/08/SmileModifiedKRAK.jpg'];

    return Scaffold(
      body: ListView.builder(

        itemCount: name.length,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: CircleAvatar(
                child: Image.network('${profile[index]}'),
              ),

              title: Text("${name[index]}"),
              subtitle: Text("${phn[index]}"),


            ),
          );

      },),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
name.add("Tinu");
phn.add(7564765476);

        },
        child: Icon(Icons.add),
      ),
    );
  }
}
