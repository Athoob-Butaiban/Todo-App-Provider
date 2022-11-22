import 'package:flutter/material.dart';
import 'package:tasks_list/providers/tasks.dart';
import 'package:provider/provider.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TASKS"),
      ),
      body: ListView.builder(
          itemCount: context.watch<Task>().tasks.length,
          itemBuilder: ((context, index) =>
              Text(context.watch<Task>().tasks[index]))),
    );
  }
}
