import 'package:flutter/material.dart';
import 'package:scannia/src/app/components/texts/standard_font.dart';

class StandardBar extends StatelessWidget {
  final Function()? onPressed;
  final IconData icon;
  Widget title;

  StandardBar(
      {required this.onPressed, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 30),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(right: 70),
                child: (IconButton(
                    onPressed: onPressed,
                    icon: Icon(
                      icon,
                      color: Colors.white,
                    ))),
              ),
              Column(children: [title])
            ]));
  }
}
