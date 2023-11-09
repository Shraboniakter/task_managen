import 'package:crud/ui/screen/set_password_screen.dart';
import 'package:crud/ui/screen/sign_up_screen.dart';
import 'package:crud/ui/widget/body_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'login_screen.dart';

class PINScreen extends StatefulWidget {
  const PINScreen({super.key});

  @override
  State<PINScreen> createState() => _PINScreenState();
}

class _PINScreenState extends State<PINScreen> {
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
              Text("PIN Verification",style: Theme.of(context).textTheme.titleLarge),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('A 6 digit verification pin will send to your email address',
                  style: TextStyle(color: Colors.grey),),
              ),
              const SizedBox(height: 24,),
                PinCodeTextField(
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    activeColor: Colors.green,

                  ),
                  animationDuration: Duration(milliseconds: 300),

                  enableActiveFill: true,
                  onCompleted: (v) {
                    print("Completed");
                  },
                  onChanged: (value) {
                  },
                  beforeTextPaste: (text) {
                    return true;
                  }, appContext: context,
                ),
                const SizedBox(height: 16,),
                SizedBox(
                  width: double.infinity,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>SetPasswordScreen()));
                    },
                      child:const Text('verify'),)),
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
