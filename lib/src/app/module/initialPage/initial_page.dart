import 'package:flutter/material.dart';
import 'package:scania/src/utils/export.dart';
import 'package:scania/src/app/components/buttons/standard_button.dart';
import 'package:scania/src/app/components/texts/standard_font.dart';
import 'package:scania/src/app/components/images/standard_logo.dart';
import 'package:scania/src/app/components/pages/standard_page.dart';
import 'package:scania/src/app/module/loginPage/login_page.dart';
import 'package:scania/src/app/module/signUpPage/signup_page.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
        body: Column(
      children: [
        const Divider(
          height: 50.0,
        ),
        const StandardLogo(
          espacoCima: 100,
          espacoBaixo: 0,
        ),
        const StandardFont(
          alinhamento: TextAlign.center,
          label: scania,
          tamanho: 30.0,
          espaco: 20,
        ),
        const Divider(
          height: 50.0,
        ),
        StandardButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignUpPage()));
          },
          label: signUp,
          fundo: Colors.black,
          texto: Colors.white,
        ),
        StandardButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
          label: login,
          fundo: Colors.white,
          texto: Colors.black,
        ),
      ],
    ));
  }
}
