// this class is to add tasks and move around the pages

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tasks_list/providers/tasks.dart';

class AddTasks extends StatelessWidget {
  AddTasks({super.key}); // class constructor

  final controller = TextEditingController(); // defining a text editer

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Task")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(controller: controller),
          ElevatedButton(
            onPressed: () {
              context.read<Task>().addTask(
                  controller.text); // this line for the function in the tasks
              context.pop;
            },
            child: Text("ADD"),
          )
        ],
      ),
    );
  }
}
