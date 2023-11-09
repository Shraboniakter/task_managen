import 'package:crud/ui/screen/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/taskitemcard.dart';

class CancelledTaskScreen extends StatefulWidget {
  const CancelledTaskScreen({super.key});

  @override
  State<CancelledTaskScreen> createState() => _CancelledTaskScreenState();
}

class _CancelledTaskScreenState extends State<CancelledTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
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
