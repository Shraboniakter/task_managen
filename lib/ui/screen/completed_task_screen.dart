import 'package:crud/ui/screen/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/taskitemcard.dart';

class CompletedTaskScreen extends StatefulWidget {
  const CompletedTaskScreen({super.key});

  @override
  State<CompletedTaskScreen> createState() => _CompletedTaskScreenState();
}

class _CompletedTaskScreenState extends State<CompletedTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child:
      Column(
        children: [
          const Profile(),
          Expanded(child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context,index){
              return const TaskitemCard();

            },
          ),
          ),
        ],

      ),
      ),
    );
  }
}
