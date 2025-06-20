import 'package:flutter/material.dart';
import 'package:reminder_app/screens/home_screen.dart';
import '../screens/add_task/add_task_navbar.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      onTap: (index) {
        if (index == 0) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const HomeScreen()));
        } else if (index == 1) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (_) => const TaskNavBar()));
        }
      },
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Container(
            decoration: BoxDecoration(
              color: const Color(0xff3650e2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.add,
              size: 47,
              color: Color(0xfff8f8f8),
            ),
          ),
          label: 'Add',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
