import 'package:crud/ui/screen/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/taskitemcard.dart';

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
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
