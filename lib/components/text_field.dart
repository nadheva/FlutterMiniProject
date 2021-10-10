// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    Key? key,
    required this.focus,
    required this.correct,
    required this.obscure,
    required this.text,
    required this.icon,
    required this.keyboardType,
    required this.controller,
    required this.validator,
  }) : super(key: key);
  final bool focus, correct, obscure;
  final String text;
  final icon;
  final keyboardType;
  final controller;
  final validator;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFormField(
      autofocus: focus,
      autocorrect: correct,
      obscureText: obscure,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        // icon: Icon(Icons.add_a_photo), //Untuk icon di luar field
        prefixIcon: Icon(icon), //Untuk icon di dalam field
        // prefixText: 'Email',
        fillColor: Colors.white,
        filled: true,
        hintText: text,
        hintStyle: TextStyle(fontFamily: 'Montserrat'),
      ),
      controller: controller,
      validator: validator,
    );
  }
}
