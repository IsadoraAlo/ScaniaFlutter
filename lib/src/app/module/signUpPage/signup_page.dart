import 'package:flutter/material.dart';
import 'package:scania/src/app/components/buttons/standard_button.dart';
import 'package:scania/src/app/components/texts/standard_font.dart';
import 'package:scania/src/app/components/inputs/standard_input.dart';
import 'package:scania/src/app/components/images/standard_logo.dart';
import 'package:scania/src/app/components/pages/standard_page.dart';
import 'package:scania/src/app/module/loginPage/login_page.dart';
import 'package:scania/src/utils/export.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StandardPage(
        body: Column(children: [
      const StandardLogo(
        espacoCima: 60,
        espacoBaixo: 40,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const StandardFont(
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
          const StandardFont(
            alinhamento: TextAlign.left,
            label: password,
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
          const StandardFont(
            alinhamento: TextAlign.left,
            label: confirmPassword,
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
            label: haveAccount,
            tamanho: 15,
            espaco: 20,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
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
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
        label: signUp,
        fundo: Colors.white,
        texto: Colors.black,
      )
    ]));
  }
}
