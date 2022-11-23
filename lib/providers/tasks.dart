// step 1 of making a provider is to creat/define a provider
// this is the provider, it is a global level tree. so it inherit from ChangeNotifier

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tasks_list/models/task_model.dart';

// this class inherits from the provider
class Task extends ChangeNotifier {
  // makeing a list of tasks

  // List<String> listOfTasks = [
  //   " finish tasks",
  //   " understand the matrila",
  //   " plan for the weekend",
  // ];
  // this list need to be a list of models, so the check box can be clickable. keep this for refrence. Make new one

  List<TaskModel> listOfTasks = [
    TaskModel(text: "finish tasks", isComplete: true),
    TaskModel(text: "understand the matrila", isComplete: false),
    TaskModel(text: "plan for the weekend", isComplete: false),
    // before the list was string now become a list of obj. error showed need to be fixed based ob the changes
  ];

  // defining a way to add tasks from the emulater to the list
  void addTask(String task) {
    TaskModel model = TaskModel(text: task, isComplete: false);
    // creating an obj from the string task. the obj named model
    listOfTasks.add(
        model); // to add tasks of the list, there is a list already to add more to it no need for an empty list
    notifyListeners(); // notify for rerendring and rebuilding whatever that is watching/reading the provider
  }

  //make new function for the new order for the check box
  void changeingTaskStatus(TaskModel task) {
    task.isComplete = !task
        .isComplete; // to flip the status, other way of doing it is by if statement, no need for it just know this one line is for flipping
  }
}
