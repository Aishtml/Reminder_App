import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String? name;
  final String? description;
  final String? date;
  final String? timeStart;
  final String? timeEnd;

  const HomeScreen({
    super.key,
    this.name,
    this.description,
    this.date,
    this.timeStart,
    this.timeEnd,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: $name'),
            Text('Description: $description'),
            Text('Date: $date'),
            Text('Start Time: $timeStart'),
            Text('End Time: $timeEnd'),
          ],
        ),
      ),
    );
  }
}
