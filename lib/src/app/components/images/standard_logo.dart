import 'package:flutter/material.dart';

class StandardLogo extends StatelessWidget {
  final double espacoBaixo;
  final double espacoCima;
  StandardLogo({
    required this.espacoBaixo,
    required this.espacoCima,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: espacoBaixo, top: espacoCima),
      child: Image.asset(
        'assets/images/logo/logo.png',
        height: 80,
        width: 80,
      ),
    );
  }
}
