import 'package:flutter/material.dart';

class StandardFont extends StatelessWidget {
  final TextAlign alinhamento;
  final String label;
  final double tamanho;
  final double espaco;
  final Function()? onPressed;

  const StandardFont(
      {required this.alinhamento,
      required this.label,
      required this.tamanho,
      required this.espaco,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: EdgeInsets.only(top: espaco, bottom: 0, left: 0, right: 0),
      ),
      child: Text(
        label,
        style: TextStyle(
            fontSize: tamanho,
            height: 0,
            color: Colors.white,
            fontWeight: FontWeight.bold),
        textAlign: alinhamento,
      ),
    );
  }
}
