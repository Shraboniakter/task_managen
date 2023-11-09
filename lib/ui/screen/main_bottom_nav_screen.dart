import 'package:crud/ui/screen/cancelled_task_screen.dart';
import 'package:crud/ui/screen/completed_task_screen.dart';
import 'package:crud/ui/screen/in%20progress_task_screen.dart';
import 'package:crud/ui/screen/new_task_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _selectedIndex=0;
  List<Widget> _screen=[
    NewTaskScreen(),
    ProgressTaskScreen(),
    CompletedTaskScreen(),
    CancelledTaskScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index){
          _selectedIndex=index;
          setState(() {

          });
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "New"),
          BottomNavigationBarItem(icon: Icon(Icons.change_circle_outlined),label: "In Progress"),
          BottomNavigationBarItem(icon: Icon(Icons.done),label:"Completed"),
          BottomNavigationBarItem(icon: Icon(Icons.close),label: "Cancelled"),
        ],
      ),
    );
  }
}

