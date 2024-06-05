import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inputfield extends StatelessWidget {
  final String hintxt;
  final bool obsceuretxt;
  final TextEditingController controller;
  const Inputfield({super.key, required this.hintxt, this.obsceuretxt = false, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        obscureText: obsceuretxt,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: hintxt
        ),
      ),
    );
  }
}
