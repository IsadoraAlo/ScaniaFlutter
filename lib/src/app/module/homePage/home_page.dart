import 'package:flutter/material.dart';
import 'package:scannia/src/app/components/buttons/standard_card.dart';
import 'package:scannia/src/app/components/pages/standard_page.dart';
import 'package:scannia/src/app/model/produtosServicos.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
        body: Column(children: [
      StandardCard(produtoServico: ProdutosServicos.getProductServiceById('1')),
      StandardCard(produtoServico: ProdutosServicos.getProductServiceById('2')),
      StandardCard(produtoServico: ProdutosServicos.getProductServiceById('3')),
      StandardCard(produtoServico: ProdutosServicos.getProductServiceById('4')),
      StandardCard(produtoServico: ProdutosServicos.getProductServiceById('5')),
    ]));
  }
}
