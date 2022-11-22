import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tasks_list/pages/add_lists.dart';
import 'package:tasks_list/pages/lists_page.dart';
import 'package:tasks_list/providers/tasks.dart';

void main() {
  runApp(const MyApp());
}

// adding a router

final router = GoRouter(routes: [
  GoRoute(
    // fisrt location to move around with
    path: "/",
    builder: ((context, state) => ListPage()),
  ),
  GoRoute(
    path: "/add", // 2nd place to move around
    builder: (context, state) => AddTasks(),
  ),
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // for provider must be wraped with ChangeNotifierProvider
    return ChangeNotifierProvider(
      create: (context) => Task(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ListPage(), // call the class as a constructor
      ),
    );
  }
}
