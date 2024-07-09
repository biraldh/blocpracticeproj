

import 'dart:convert';

import 'package:blocpracticeproj/Model/LoginModel.dart';
import 'package:blocpracticeproj/Model/UserModel.dart';
import 'package:http/http.dart' as http;
import '../main.dart';

class AuthService {
  Future<Object>? signupUserWithEmailAndPassword({
    required String name,
    required String email,
    required String password,

  }) {
    return null;
  }
  /*async {
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
  }*/
  Future<Object> signinWithEmailAndPassword(UserModel user) async {
    try {
      var url = Uri.parse('http://192.168.0.104:8000/api/login/');
      var body = jsonEncode({
        'email': user.email,
        'password': user.password,
      });
      var response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'EMAIL': user.email!, // Send email as a header
          'PASSWORD': user.password!,
        },
        body: body
      );
      if (response.statusCode == 200) {
        var userData = LoginModel.fromJson(jsonDecode(response.body));
        return userData;
      } else {

        var jsonResponse = jsonDecode(response.body);
        var errorMessage = jsonResponse['detail'];
        return errorMessage;
      }
    } on http.ClientException catch (e) {

      return e.message;
    } catch (e) {
      return "An error occurred: $e";
    }
  }


}
