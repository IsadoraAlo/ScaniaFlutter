import 'package:flutter/material.dart';
import 'package:scannia/src/app/model/produtoServico.dart';

class StandardImages extends StatelessWidget {
  final ProdutoServico produtoServico;

  StandardImages({required this.produtoServico});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 110.0,
        height: 110.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.white,
            width: 5,
          ),
        ),
        margin: const EdgeInsets.only(top: 32.0, left: 16.0),
        padding: const EdgeInsets.all(3.0),
        child: Container(
          width: 10,
          height: 10,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            produtoServico.imagem,
            width: 10,
            height: 10,
          ),
        ));
  }
}
