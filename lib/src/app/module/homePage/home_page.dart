import 'package:flutter/material.dart';
import 'package:scania/src/app/components/buttons/standard_card.dart';
import 'package:scania/src/app/components/pages/standard_page.dart';
import 'package:scania/src/app/model/produtos_servicos.dart';
import 'package:scania/src/app/components/pages/content_page.dart';
import 'package:scania/src/app/components/appBar/standard_bar.dart';
import 'package:scania/src/app/module/initialPage/initial_page.dart';
import 'package:scania/src/app/components/texts/standard_font.dart';
import 'package:scania/src/utils/export.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
        body: Column(children: [
      StandardBar(
        icon: Icons.logout,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => InitialPage()));
        },
        title: const StandardFont(
          alinhamento: TextAlign.center,
          label: scania,
          tamanho: 30,
          espaco: 20,
        ),
      ),
      StandardCard(
        produtoServico: ProdutosServicos.getProductServiceById('1'),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ContentPage(
                      produtoServico:
                          ProdutosServicos.getProductServiceById('1'))));
        },
      ),
      StandardCard(
        produtoServico: ProdutosServicos.getProductServiceById('2'),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ContentPage(
                      produtoServico:
                          ProdutosServicos.getProductServiceById('2'))));
        },
      ),
      StandardCard(
        produtoServico: ProdutosServicos.getProductServiceById('3'),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ContentPage(
                      produtoServico:
                          ProdutosServicos.getProductServiceById('3'))));
        },
      ),
      StandardCard(
        produtoServico: ProdutosServicos.getProductServiceById('4'),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ContentPage(
                      produtoServico:
                          ProdutosServicos.getProductServiceById('4'))));
        },
      ),
      StandardCard(
        produtoServico: ProdutosServicos.getProductServiceById('5'),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ContentPage(
                      produtoServico:
                          ProdutosServicos.getProductServiceById('5'))));
        },
      ),
    ]));
  }
}
