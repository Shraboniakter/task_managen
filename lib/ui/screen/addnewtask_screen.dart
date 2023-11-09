
import 'package:crud/ui/screen/profile.dart';
import 'package:crud/ui/widget/body_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AddNewTask extends StatefulWidget {
  const AddNewTask({super.key});

  @override
  State<AddNewTask> createState() => _AddNewTaskState();
}

class _AddNewTaskState extends State<AddNewTask> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          SafeArea(
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Profile(),

                Expanded(child: BodyBackground(
                  child: SingleChildScrollView(
                   child: Padding(
                     padding: const EdgeInsets.all(16.0),
                     child: Column(children: [
                       const SizedBox(height: 48,),
                      Text("Add New Task",style: Theme.of(context).textTheme.titleLarge),
                      const SizedBox(height: 24,),
                      TextFormField(
                        keyboardType:TextInputType.text,
                        decoration: const InputDecoration(
                          hintText: 'Subject',
                        ),
                      ),
                        const SizedBox(height: 16,),
                        TextFormField(
                          maxLines: 5,
                          decoration: const InputDecoration(
                            hintText: 'Description',


                          ),
                        ),
                        const SizedBox(height: 16,),
                        SizedBox(
                          width: double.infinity,
                            child: ElevatedButton(onPressed: (){

                            },
                              child:const Icon((Icons.arrow_circle_right_outlined)),)),
  ], ),
                   ),
               ),
                ),
               ),

            ],
            ),
          ),


    );
  }
}
