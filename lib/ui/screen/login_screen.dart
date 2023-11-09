import 'package:crud/ui/screen/forgot_password_screen.dart';
import 'package:crud/ui/screen/sign_up_screen.dart';
import 'package:crud/ui/widget/body_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              Text("Get Started With",style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 24,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: 'Email',
                ),
              ),
                const SizedBox(height: 16,),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: 'Password',
                  ),
                ),
                const SizedBox(height: 16,),
                SizedBox(
                  width: double.infinity,
                    child: ElevatedButton(onPressed: (){},
                      child:const Icon(Icons.arrow_circle_right_outlined),)),
                const SizedBox(height: 48,),
                Center(child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordScreen()));
                },
                    child: const Text('Forgot Password?',
                      style: TextStyle(color: Colors.grey,fontSize: 16),),
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Don't have a account?",
                    style: TextStyle(
                        fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,

                  ),),
                  TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpScreen()));
                  },
                    child: const Text('Sign Up?',style: TextStyle(fontSize: 16),),
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
