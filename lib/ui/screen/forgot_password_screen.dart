import 'package:crud/ui/screen/pin_verification_screen.dart';
import 'package:crud/ui/screen/sign_up_screen.dart';
import 'package:crud/ui/widget/body_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
              Text("Your Email Address",style: Theme.of(context).textTheme.titleLarge),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('A 6 digit verification pin will send to your email address',
                  style: TextStyle(color: Colors.grey),),
              ),
              const SizedBox(height: 24,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: 'Email',
                ),
              ),
                const SizedBox(height: 16,),
                SizedBox(
                  width: double.infinity,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PINScreen()));
                    },
                      child:const Icon(Icons.arrow_circle_right_outlined),)),
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
                    Navigator.pop(context);

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
