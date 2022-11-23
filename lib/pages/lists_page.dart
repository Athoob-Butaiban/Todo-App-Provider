import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tasks_list/providers/tasks.dart';
import 'package:provider/provider.dart';

/*this file is linked to tasks.dart file (our provider). 
here we control what will be displaied on the emulater for the linked file */
class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("TASKS"),
        actions: [
          IconButton(
              onPressed: () {
                context.push("/add"); // to add the router to the page
              },
              icon: Icon(Icons.add_box_outlined) // to add the button
              )
        ], //cations is a list of widgets
      ),
      //"make it work then style"
      body: ListView.builder(
          itemCount: context.watch<Task>().listOfTasks.length,
          itemBuilder: ((context, index) => Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Checkbox(
                          value: context
                              .watch<Task>()
                              .listOfTasks[index]
                              .isComplete, // so it can the value from the obj as changes accoding to it
                          onChanged: (value) {}),
                      Expanded(
                        child: Text(
                          context
                              .watch<Task>()
                              .listOfTasks[index]
                              .text, // text is add BC the list become list of obj
                        ),
                      ),
                      // Spacer(), can be replaced with expanded. Both do the same thing
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.delete)), // delte icon
                    ],
                  ),
                ),
              )) // here only building the elements
          ),
    );
  }
}
// in line18: defin the item count so we can either reador watch the provider. this line means that we will watch the provider that we made and accessing the list that was made in it.
