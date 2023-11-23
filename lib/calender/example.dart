import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Exb12 extends StatefulWidget {
  const Exb12({super.key});

  @override
  State<Exb12> createState() => _Exb12State();
}

class _Exb12State extends State<Exb12> {
  TextEditingController dateInput = TextEditingController();
  TextEditingController timeInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    timeInput.text = ""; //set the initial value of text field
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("DatePicker in Flutter"),
          backgroundColor: Colors.redAccent, //background color of app bar
        ),
        body: Center(
            child: Column(
              children: [
                TextField(
                  controller: dateInput,
                  decoration: const InputDecoration(
                      icon: Icon(Icons.calendar_today),
//icon of text field
                      labelText: "Enter Date" //label text of field
                  ),
                  onTap: () async {
                    DateTime? date = await showDatePicker(
                        context: context,
                        firstDate: DateTime(2000),
                        initialDate: DateTime.now(),
                        lastDate: DateTime(2050)) as DateTime;

                    if (date != null) {
                      String selectedDate = DateFormat('yyyy-MM-dd').format(date);
                      setState(() {
                        dateInput.text =
                            selectedDate; //set output date to TextField value.
                      });
                    } else {}
                  },
                ),
                TextField(
                  controller: timeInput,
//editing controller of this TextField
                  decoration: const InputDecoration(
                      icon: Icon(Icons.timer), //icon of text field
                      labelText: "Enter Time" //label text of field
                  ),
                  readOnly: true,
//set it true, so that user will not able to edit text
                  onTap: () async {
                    var time = await showTimePicker(
                        context: context, initialTime: TimeOfDay.now());

                    if (time != null) {
                      timeInput.text = time.format(context);
                    }
                  },
                )
              ],
            )));
  }
}

