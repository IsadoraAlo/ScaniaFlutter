import 'package:flutter/material.dart';
import 'package:scannia/src/app/model/produtoServico.dart';
import 'package:scannia/src/app/components/images/standard_images.dart';
import 'package:scannia/src/utils/export.dart';

class ContentPage extends StatelessWidget {
  final ProdutoServico produtoServico;

  ContentPage({
    required this.produtoServico,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: <Widget>[
          StandardImages(
            produtoServico: produtoServico,
          ),
          const Icon(Icons.star_sharp, size: 14.0, color: Colors.white),
          Text(produtoServico.avaliacao,
              style: const TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 12.0,
                  color: Colors.white)),
          Container(width: 24.0),
          const Icon(Icons.account_box, size: 14.0, color: Colors.white),
          Text(produtoServico.tipo,
              style: const TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 12.0,
                  color: Colors.white)),
        ],
      ),
      Container(
          color: Colors.white,
          width: 400.0,
          height: 1.0,
          margin: const EdgeInsets.symmetric(vertical: 8.0)),
      Row(
        children: const <Widget>[
          Text(about,
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 12.0,
                  color: Colors.white))
        ],
      )
    ]);
  }
}
