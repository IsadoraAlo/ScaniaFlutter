import 'package:flutter/material.dart';

class StandardInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 360,
        height: 20,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
                color: Colors.white, width: 1, style: BorderStyle.solid),
          ),
        ),
        child: const TextField(
            cursorColor: Colors.white,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration()));
  }
}
