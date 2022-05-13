import 'package:flutter/material.dart';
import 'package:scania/src/app/module/homePage/home_page.dart';

class StandardMediaButton extends StatelessWidget {
  final double espacoDireita;
  final double espacoEsquerda;
  final String label;
  final int iconCode;

  const StandardMediaButton(
      {required this.espacoDireita,
      required this.espacoEsquerda,
      required this.label,
      required this.iconCode});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 180.0,
        padding: EdgeInsets.only(right: espacoDireita, left: espacoEsquerda),
        child: TextButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                IconData(iconCode, fontFamily: 'icomoon'),
                color: Colors.black,
                size: 15.0,
              ),
              Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ));
  }
}
