import 'package:flutter/material.dart';

class StandardLogo extends StatelessWidget {
  final double espaco;
  StandardLogo({
    required this.espaco,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: espaco),
      child: Image.asset(
        'assets/images/logo/logo.png',
        height: 80,
        width: 80,
      ),
    );
  }
}
