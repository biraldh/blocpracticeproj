import 'package:blocpracticeproj/Screen/pages/Signup_page.dart';
import 'package:blocpracticeproj/Screen/widget/buttonloginsignin.dart';
import 'package:blocpracticeproj/bloc/signinbloc/sign_in_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Core/Error/Login and Signup error/Loginin.dart';
import '../widget/inputfield.dart';

class Signin extends StatefulWidget {

  static route() => MaterialPageRoute(builder: (context)=> Signin());

  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  LoginError _signup_error = LoginError();
  String errmessage = '';
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
      body: BlocListener<SignInBloc, SignInState>(
    listener: (context, state) {
      if(state is SignInSuccess){
        Navigator.pushNamed(context, "/home");
      }else if (state is SignInFail){
        setState(() {
          errmessage = _signup_error.LoginFaliure(state.Errmessage);
        });

      }

  },
  child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Sign in", style: TextStyle(fontSize: 30),),
          Inputfield(hintxt: 'Email', controller: _emailcontrol,),
          Inputfield(hintxt: 'Passwrod', obsceuretxt: true, controller: _passwordcontrol,),
          ElvButton(buttontext: 'Sign in' ,onPressed: (){
            if (_emailcontrol.text.trim().isNotEmpty && _passwordcontrol.text.trim().isNotEmpty){
              context.read<SignInBloc>().add(SignInUser(
              email: _emailcontrol.text.trim(),
              Password: _passwordcontrol.text.trim()
              ));
              setState(() {
                errmessage = '';
              });
            }else{
            setState(() {
              errmessage = "fill the fields";
            });
          }
          },),
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
          ),
          Text(errmessage)
        ],
      ),
),
    );
  }
}
