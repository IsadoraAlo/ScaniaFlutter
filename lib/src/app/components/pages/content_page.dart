import 'package:flutter/material.dart';
import 'package:scannia/src/app/model/produto_servico.dart';
import 'package:scannia/src/app/components/texts/standard_icon_text.dart';
import 'package:scannia/src/utils/export.dart';
import 'package:scannia/src/app/components/appBar/standard_bar.dart';
import 'package:scannia/src/app/components/texts/standard_font.dart';
import 'package:scannia/src/app/module/homePage/home_page.dart';
import 'package:scannia/src/app/components/texts/standard_text.dart';
import 'package:scannia/src/app/components/images/standard_logo.dart';

class ContentPage extends StatelessWidget {
  final ProdutoServico produtoServico;

  const ContentPage({
    required this.produtoServico,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size(double.infinity, kToolbarHeight),
            child: StandardBar(
              icon: Icons.arrow_back,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              title: const StandardFont(
                alinhamento: TextAlign.center,
                label: ' ',
                tamanho: 0,
                espaco: 0,
              ),
            )),
        body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const StandardLogo(espacoBaixo: 10, espacoCima: 10),
                StandardFont(
                    alinhamento: TextAlign.right,
                    label: produtoServico.nome,
                    tamanho: 25,
                    espaco: 8),
                StandardIconText(
                    espacamentoTextos: 177,
                    produtoServico: produtoServico,
                    tamanhoFontes: 20,
                    tamanhoIcones: 20),
                Container(
                    color: Colors.white,
                    width: 350.0,
                    height: 1.0,
                    margin: const EdgeInsets.symmetric(vertical: 8.0)),
                Row(
                  children: const [
                    StandardFont(
                        alinhamento: TextAlign.left,
                        label: about,
                        tamanho: 25,
                        espaco: 8),
                  ],
                ),
                StandardText(
                    tamanhoFontes: 18,
                    espessuraFontes: FontWeight.w300,
                    label: produtoServico.descricao)
              ],
            )));
  }
}
