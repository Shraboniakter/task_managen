import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'edit_profile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key,this.enableOnTap=true});
  final bool enableOnTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        if(enableOnTap) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => EditProfile()));
        }
      },
      leading: const CircleAvatar(
        child: Icon(Icons.person),
      ),
      title: const Text('Shraboni Akter',style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: const Text("shrabonbhuiyan708@gmail.com"),
      trailing: enableOnTap? const Icon(Icons.arrow_forward_sharp,) :null,
      tileColor: Colors.green,
      textColor: Colors.white,
    );
  }
}
