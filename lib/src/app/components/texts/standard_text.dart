import 'package:flutter/material.dart';

class StandardText extends StatelessWidget {
  final double tamanhoFontes;
  final FontWeight espessuraFontes;
  final String label;

  const StandardText(
      {required this.tamanhoFontes,
      required this.espessuraFontes,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(label,
        style: TextStyle(
            fontWeight: espessuraFontes,
            fontSize: tamanhoFontes,
            color: Colors.white));
  }
}
