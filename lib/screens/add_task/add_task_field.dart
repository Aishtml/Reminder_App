import 'package:flutter/material.dart';
import '../../widgets/custom_text_field.dart';
import '../../constants/styles.dart';
import '../home_screen.dart';

class AddTaskField extends StatefulWidget {
  const AddTaskField({super.key});

  @override
  State<AddTaskField> createState() => _AddTaskFieldState();
}

class _AddTaskFieldState extends State<AddTaskField> {
  final taskName = TextEditingController();
  final taskNote = TextEditingController();
  final setDate = TextEditingController();
  final startTime = TextEditingController();
  final endTime = TextEditingController();

  @override
  void dispose() {
    taskName.dispose();
    taskNote.dispose();
    setDate.dispose();
    startTime.dispose();
    endTime.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CustomTextField(label: 'Task Name', controller: taskName),
          const SizedBox(height: 40),
          CustomTextField(label: 'Task Note', controller: taskNote),
          const SizedBox(height: 40),
          CustomTextField(
            label: 'Set Date',
            controller: setDate,
            suffixIcon: Icons.calendar_month,
          ),
          const SizedBox(height: 40),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  label: 'Start Time',
                  controller: startTime,
                  suffixIcon: Icons.access_alarm,
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: CustomTextField(
                  label: 'End Time',
                  controller: endTime,
                  suffixIcon: Icons.access_alarm,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(
                    name: taskName.text,
                    description: taskNote.text,
                    date: setDate.text,
                    timeStart: startTime.text,
                    timeEnd: endTime.text,
                  ),
                ),
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(primaryBlue),
              minimumSize: MaterialStateProperty.all(
                const Size(double.infinity, 60),
              ),
            ),
            child: const Text(
              'Add',
              style: TextStyle(color: lightWhite, fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}
