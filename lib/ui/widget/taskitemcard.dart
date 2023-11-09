import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskitemCard extends StatelessWidget {
  const TaskitemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsets.symmetric(vertical: 16,horizontal: 6),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title Will be here',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("Descriptions"),
            Text('Date:13.11.23'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(label: Text('New',
                  style: TextStyle(color: Colors.white),),
                  backgroundColor: Colors.blue,),
                Wrap(
                  children: [
                    Icon(Icons.delete_outline_sharp),
                    Icon(Icons.edit),

                  ],)
              ],
            )
          ],),
      ),);
  }
}