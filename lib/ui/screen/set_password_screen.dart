import 'package:crud/ui/screen/login_screen.dart';
import 'package:crud/ui/screen/pin_verification_screen.dart';
import 'package:crud/ui/screen/sign_up_screen.dart';
import 'package:crud/ui/widget/body_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyBackground(
          child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const SizedBox(height: 80,),
              Text("Set Password",style: Theme.of(context).textTheme.titleLarge),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Minimum length password 8 character with latter and number combination',
                  style: TextStyle(color: Colors.grey),),
              ),
              const SizedBox(height: 24,),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
                SizedBox(height: 16,),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Confirm Password',
                  ),
                ),
                const SizedBox(height: 16,),
                SizedBox(
                  width: double.infinity,
                    child: ElevatedButton(onPressed: (){

                    },
                      child:const Text('Confirm'),)),
                const SizedBox(height: 48,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  const Text("Have a account?",
                    style: TextStyle(
                        fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,

                  ),),
                  TextButton(onPressed: (){
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context)=>LoginScreen()), (route) => false);

                  },
                    child: const Text('Sign In?',style: TextStyle(fontSize: 16),),
                  ),

                ],)
            ],
            ),
          ),
        ),
      )
        )

    );
  }
}
