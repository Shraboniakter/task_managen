import 'package:crud/ui/screen/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/summerycard.dart';
import '../widget/taskitemcard.dart';
import 'addnewtask_screen.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewTask()));
      },
          child:Icon(Icons.add)),
      body: SafeArea(
        child: Column(
          children: [
           const Profile(),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0,right: 16.0),
                child: Row(
                  children: [
                    SummeryCard(
                      count: '92',
                      title: 'New',
                    ),

                    SummeryCard(
                      count: '92',
                      title: 'In Progress',
                    ),

                    SummeryCard(
                      count: '92',
                      title: 'Completed',
                    ),

                    SummeryCard(
                      count: '92',
                      title: 'Cancelled',
                    ),


                  ],),
              ),
            ),
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



