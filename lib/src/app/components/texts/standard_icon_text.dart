import 'package:flutter/material.dart';
import 'package:scannia/src/app/model/produtoServico.dart';
import 'package:scannia/src/app/components/texts/standard_text.dart';

class StandardIconText extends StatelessWidget {
  final ProdutoServico produtoServico;
  final double tamanhoIcones;
  final double tamanhoFontes;
  final double espacamentoTextos;

  @override
  StandardIconText({
    required this.produtoServico,
    required this.tamanhoIcones,
    required this.tamanhoFontes,
    required this.espacamentoTextos,
  });

  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(Icons.star_sharp, size: tamanhoIcones, color: Colors.white),
        StandardText(
            espessuraFontes: FontWeight.w300,
            tamanhoFontes: tamanhoFontes,
            label: produtoServico.avaliacao),
        Container(width: espacamentoTextos),
        Icon(const IconData(0xeaae, fontFamily: 'icomoon'),
            size: tamanhoIcones, color: Colors.white),
        StandardText(
            espessuraFontes: FontWeight.w300,
            tamanhoFontes: tamanhoFontes,
            label: produtoServico.tipo),
      ],
    );
  }
}
