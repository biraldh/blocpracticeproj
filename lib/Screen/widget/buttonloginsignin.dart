import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ElvButton extends StatelessWidget {
  final String buttontext;
  final  VoidCallback onPressed;
  const ElvButton({super.key, required this.buttontext, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          fixedSize:WidgetStateProperty.all<Size>(
            const Size(300, 50.0), // Button width and height
          ),
        ),
        onPressed: onPressed,
        child: Text(buttontext,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20, color:
        Colors.black),)
    );
  }
}
