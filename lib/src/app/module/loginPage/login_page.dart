import 'package:flutter/material.dart';
import 'package:scannia/src/app/components/buttons/standard_button.dart';
import 'package:scannia/src/app/components/texts/standard_font.dart';
import 'package:scannia/src/app/components/inputs/standard_input.dart';
import 'package:scannia/src/app/components/images/standard_logo.dart';
import 'package:scannia/src/app/components/pages/standard_page.dart';
import 'package:scannia/src/app/components/texts/standard_fancy_title.dart';
import 'package:scannia/src/app/components/buttons/standard_midia_button.dart';
import 'package:scannia/src/app/module/signUpPage/signup_page.dart';
import 'package:scannia/src/app/module/homePage/home_page.dart';
import 'package:scannia/src/utils/export.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
        body: Column(children: [
      StandardLogo(
        espaco: 40,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          StandardFont(
            alinhamento: TextAlign.left,
            label: email,
            tamanho: 15,
            espaco: 20,
          ),
          StandardInput(),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          StandardFont(
            alinhamento: TextAlign.left,
            label: password,
            tamanho: 15,
            espaco: 20,
          ),
          StandardInput(),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          StandardFont(
            alinhamento: TextAlign.right,
            label: dontHaveAccount,
            tamanho: 15,
            espaco: 20,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUpPage()));
            },
          ),
        ],
      ),
      const Divider(
        height: 40.0,
      ),
      StandardButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        label: login,
        fundo: Colors.white,
        texto: Colors.black,
      ),
      StandardTitle(
        label: connectWith,
      ),
      Row(children: [
        StandardMediaButton(
          espacoDireita: 5,
          espacoEsquerda: 0,
          iconCode: 0xea90,
          label: facebook,
        ),
        StandardMediaButton(
          espacoDireita: 0,
          espacoEsquerda: 5,
          iconCode: 0xea88,
          label: google,
        )
      ])
    ]));
  }
}
