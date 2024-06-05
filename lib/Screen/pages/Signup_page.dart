
import 'package:blocpracticeproj/Screen/pages/Signin.dart';
import 'package:blocpracticeproj/Screen/widget/buttonloginsignin.dart';
import 'package:blocpracticeproj/Screen/widget/inputfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context)=> SignupPage());
  const SignupPage({super.key});


  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _namecontrol = TextEditingController();
  final TextEditingController _emailcontrol = TextEditingController();
  final TextEditingController _passwordcontrol = TextEditingController();
  @override
  void dispose() {
    _namecontrol.dispose();
    _emailcontrol.dispose();
    _passwordcontrol.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Sign up', style: TextStyle(fontSize: 40),),
          Inputfield(hintxt: 'email', controller: _emailcontrol),
          Inputfield(hintxt: 'Name', controller: _namecontrol,),
          Inputfield(hintxt: 'Passsword', obsceuretxt: true , controller: _passwordcontrol,),
          ElvButton(buttontext: 'Sign Up'),
          GestureDetector(
            onTap: (){
              Navigator.push(context, Signin.route());
            },
            child: RichText(text: TextSpan(
                text: 'Already have an Account? ',
                style: Theme.of(context).textTheme.titleMedium,
                children: [
                  TextSpan(
                    text: 'Sign In',
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
