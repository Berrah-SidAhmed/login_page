import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Mybtn extends StatelessWidget {
  String text;
  final onPressed;

   Mybtn({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            padding: const WidgetStatePropertyAll(EdgeInsets.all(10)),
            foregroundColor: const WidgetStatePropertyAll(Colors.black),
            elevation: const WidgetStatePropertyAll(6),
            shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))),
            side: WidgetStatePropertyAll(
                BorderSide(color: Colors.grey.shade400))),
        onPressed: onPressed,
        child:  Text(text,
          style: const TextStyle(fontSize: 22),
        ));
  }
}
