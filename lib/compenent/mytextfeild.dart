import 'package:flutter/material.dart';

class Mytextfeild extends StatelessWidget {
  String text;
  bool obscure;
  final icon;
  final controller;
  Mytextfeild(
      {super.key,
      required this.text,
      required this.obscure,
      required this.icon,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white.withOpacity(0.6),
        hintText: text,
        suffixIcon: icon,
        hintStyle:
            TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
