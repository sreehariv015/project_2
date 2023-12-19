import 'package:flutter/material.dart';

class Task {
  String name;
  bool isCompleted;

  Task(this.name, this.isCompleted);
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List<Task> tasks =[];
  TextEditingController taskController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Expanded(
              child:ListView.builder(
                itemCount: tasks.length,
                  itemBuilder:(context,index){
                  return ListTile(
                    title: Text(tasks[index].name),
                    leading: Checkbox(
                        value: tasks[index].isCompleted,
                        onChanged: (value) {
                          setState(() {
                            tasks[index].isCompleted=value!;
                          });
                        },),
                    trailing: IconButton(onPressed: () {
                      setState(() {
                        tasks.removeAt(index);
                      });
                    }, icon: const Icon(Icons.delete)),
                  );
                  }
                  )
          ),
           Padding(padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child:TextField(
                      controller: taskController,
                      decoration: const InputDecoration(
                        labelText: 'New Task '
                      ),
                    ),
                ),
                const SizedBox(width: 10,),
                ElevatedButton(onPressed: () {
                  setState(() {
                    if (taskController.text.isNotEmpty){
                      setState(() {
                        tasks.add(Task(taskController.text, false));
                        taskController.clear();
                      });
                    }
                  });
                }, child: const Text('Add Task')
                )
              ],
            ),


          )
        ],
      ),
    );
  }

}

