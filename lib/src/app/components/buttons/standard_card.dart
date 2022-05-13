import 'package:flutter/material.dart';
import 'package:scannia/src/app/components/images/standard_images.dart';
import 'package:scannia/src/app/components/texts/standard_icon_text.dart';
import 'package:scannia/src/app/components/texts/standard_text.dart';
import 'package:scannia/src/app/model/produto_servico.dart';

class StandardCard extends StatelessWidget {
  final ProdutoServico produtoServico;
  final Function()? onPressed;

  const StandardCard({required this.produtoServico, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120.0,
        margin: const EdgeInsets.only(top: 16.0, bottom: 8.0),
        child: TextButton(
            onPressed: onPressed,
            child: Stack(children: <Widget>[
              Container(
                margin: const EdgeInsets.only(left: 72.0, right: 24.0),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 10.0,
                        offset: Offset(0.0, 10.0))
                  ],
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 16.0, left: 72.0),
                  constraints: const BoxConstraints.expand(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      StandardText(
                          tamanhoFontes: 24,
                          espessuraFontes: FontWeight.w600,
                          label: produtoServico.nome),
                      StandardText(
                          tamanhoFontes: 14,
                          espessuraFontes: FontWeight.w300,
                          label: produtoServico.setor),
                      Container(
                          color: Colors.white,
                          width: 24.0,
                          height: 1.0,
                          margin: const EdgeInsets.symmetric(vertical: 8.0)),
                      StandardIconText(
                        produtoServico: produtoServico,
                        espacamentoTextos: 24,
                        tamanhoFontes: 16,
                        tamanhoIcones: 18,
                      )
                    ],
                  ),
                ),
              ),
              StandardImages(produtoServico: produtoServico)
            ])));
  }
}
