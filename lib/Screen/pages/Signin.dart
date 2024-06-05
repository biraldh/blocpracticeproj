import 'package:blocpracticeproj/Screen/pages/Signup_page.dart';
import 'package:blocpracticeproj/Screen/widget/buttonloginsignin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/inputfield.dart';

class Signin extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context)=> Signin());
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final TextEditingController _emailcontrol = TextEditingController();
  final TextEditingController _passwordcontrol = TextEditingController();
  @override
  void dispose() {
    _emailcontrol.dispose();
    _passwordcontrol.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Sign in", style: TextStyle(fontSize: 30),),
          Inputfield(hintxt: 'Email', controller: _emailcontrol,),
          Inputfield(hintxt: 'Passwrod', obsceuretxt: true, controller: _passwordcontrol,),
          ElvButton(buttontext: 'Sign in'),
          GestureDetector(
            onTap: (){
              Navigator.push(context, SignupPage.route());
            },
            child: RichText(text: TextSpan(
                text: 'Dont have an Account? ',
                style: Theme.of(context).textTheme.titleMedium,
                children: [
                  TextSpan(
                    text: 'Sign Up',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ]
            )),
          )
        ],
      ),
    );
  }
}
