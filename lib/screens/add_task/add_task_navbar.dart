import 'package:flutter/material.dart';
import '../home_screen.dart';
import '../../widgets/custom_bottom_nav.dart';
import 'add_task_field.dart';

class TaskNavBar extends StatelessWidget {
  const TaskNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => const HomeScreen(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          'ADD TASK',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
      ),
      body: const AddTaskField(),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
