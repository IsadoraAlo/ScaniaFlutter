import 'package:flutter/material.dart';
import 'package:scannia/src/app/model/produtoServico.dart';
import 'package:scannia/src/app/components/texts/standard_icon_text.dart';
import 'package:scannia/src/utils/export.dart';
import 'package:scannia/src/app/components/appBar/standard_bar.dart';
import 'package:scannia/src/app/components/texts/standard_font.dart';
import 'package:scannia/src/app/module/homePage/home_page.dart';
import 'package:scannia/src/app/components/texts/standard_text.dart';

class ContentPage extends StatelessWidget {
  final ProdutoServico produtoServico;

  ContentPage({
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
              title: StandardFont(
                alinhamento: TextAlign.center,
                label: ' ',
                tamanho: 0,
                espaco: 0,
              ),
            )),
        body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppPaddings.borderPadding,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                  children: <Widget>[
                    StandardText(
                        tamanhoFontes: 12,
                        espessuraFontes: FontWeight.w300,
                        label: about)
                  ],
                )
              ],
            )));
  }
}
