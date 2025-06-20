import 'package:flutter/material.dart';
import 'screens/add_task/add_task_navbar.dart';

void main() {
  runApp(const AddTaskApp());
}

class AddTaskApp extends StatelessWidget {
  const AddTaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskNavBar(),
    );
  }
}
