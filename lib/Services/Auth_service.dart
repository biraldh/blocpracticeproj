import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthService {
  final FirebaseAuth _auth;

  AuthService(this._auth);

  Future<Object> signupUserWithEmailAndPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Update the user's display name
      return userCredential;
    } on FirebaseAuthException catch (e) {
      return e.message ?? 'An error occurred';
    } catch (e) {
      return 'An error occurred';
    }
  }
  Future<Object> SigninWithEmailandPassword({
    required String email,
    required String password,
  })async{
    try {
      UserCredential userinfo = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      return userinfo;
    } on FirebaseAuthException catch(e){
      return e.code;
    }
  }
}
