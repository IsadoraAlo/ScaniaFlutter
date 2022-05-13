import 'package:flutter/material.dart';
import 'package:scania/src/utils/paddings.dart';

class StandardPage extends StatelessWidget {
  final Widget body;

  const StandardPage({
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppPaddings.borderPadding,
        ),
        child: SingleChildScrollView(child: body),
      ),
    );
  }
}
