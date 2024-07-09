import 'package:blocpracticeproj/Screen/pages/Signin.dart';
import 'package:blocpracticeproj/Screen/pages/home.dart';
import 'package:blocpracticeproj/Services/Auth_service.dart';
import 'package:blocpracticeproj/bloc/signinbloc/sign_in_bloc.dart';
import 'package:blocpracticeproj/bloc/signupbloc/signup_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'Screen/pages/Signup_page.dart';


const SERVER_IP = 'http://127.0.0.1:8000';
final storage = FlutterSecureStorage();
void main() async{

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider<SignupBloc>(
          create: (context) => SignupBloc(AuthService()),
        ),
        BlocProvider<SignInBloc>(
          create: (context) => SignInBloc(AuthService()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: const Signin(),
        routes: {
          '/signup': (context) => const SignupPage(),
          '/signin': (context) => const Signin(),
          '/home' : (context) => const Home(),
        },
      ),
    );
  }
}
