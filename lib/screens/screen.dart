import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen(
      {super.key, required this.portraitBody, required this.landscapeBody});

  final Widget portraitBody;
  final Widget landscapeBody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 620) {
        return portraitBody;
      } else {
        return landscapeBody;
      }
    });
  }
}
