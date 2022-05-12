import 'package:flutter/material.dart';

class StandardTitle extends StatelessWidget {
  final String label;

  StandardTitle({required this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(children: [
          const Expanded(
              child: Divider(
            color: Colors.white,
            thickness: 1,
            endIndent: 10,
          )),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Expanded(
              child: Divider(
            color: Colors.white,
            thickness: 1,
            indent: 10,
          )),
        ]));
  }
}
