import 'package:flutter/material.dart';
import 'package:scannia/src/app/model/produtoServico.dart';
import 'package:scannia/src/app/components/images/standard_images.dart';

class StandardCard extends StatelessWidget {
  final ProdutoServico produtoServico;
  StandardCard({required this.produtoServico});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120.0,
        margin: const EdgeInsets.only(top: 16.0, bottom: 8.0),
        child: TextButton(
            onPressed: () {},
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
                      Text(produtoServico.nome,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 24.0,
                              color: Colors.white)),
                      Text(produtoServico.avaliacao,
                          style: const TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 14.0,
                              color: Colors.white)),
                      Container(
                          color: Colors.white,
                          width: 24.0,
                          height: 1.0,
                          margin: const EdgeInsets.symmetric(vertical: 8.0)),
                      Row(
                        children: <Widget>[
                          const Icon(Icons.star_sharp,
                              size: 14.0, color: Colors.white),
                          Text(produtoServico.avaliacao,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12.0,
                                  color: Colors.white)),
                          Container(width: 24.0),
                          const Icon(Icons.account_box,
                              size: 14.0, color: Colors.white),
                          Text(produtoServico.tipo,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12.0,
                                  color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              StandardImages(produtoServico: produtoServico)
            ])));
  }
}
