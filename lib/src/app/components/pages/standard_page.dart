import 'package:flutter/material.dart';
import 'package:scannia/src/utils/paddings.dart';

class StandardPage extends StatelessWidget {
  final Widget body;

  StandardPage({
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: AppPaddings.borderPadding,
          right: AppPaddings.borderPadding,
        ),
        child: SingleChildScrollView(child: body),
      ),
    );
  }
}
