// step 1 of making a provider is to creat a provider

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// this class inherits from the provider
class Task extends ChangeNotifier {
  // makeing a list of tasks
  List<String> tasks = [
    "finish tasks",
    "understand the matrila",
    "plan for the weekend",
  ];
  void addTask(String task) {
    tasks.add(task);
    notifyListeners();
  }
}
