import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class StandardButton extends StatelessWidget {
  final Function()? onPressed;
  final String label;
  final Color fundo;
  final Color texto;

  const StandardButton(
      {required this.onPressed,
      required this.label,
      required this.fundo,
      required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(
          top: 20.0,
        ),
        child: SizedBox(
            width: kIsWeb ? 80 : double.infinity,
            height: 40,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(fundo),
                  foregroundColor: MaterialStateProperty.all<Color>(texto),
                  side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(width: 1.0, color: Colors.white))),
              onPressed: onPressed,
              child: Text(label, textAlign: TextAlign.center),
            )));
  }
}
