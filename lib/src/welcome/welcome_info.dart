import 'package:a1_documentation/src/components/color_scheme.dart';
import 'package:flutter/material.dart';

class WelcomeInfo extends StatelessWidget {
  const WelcomeInfo({super.key});

  final double fontSize = 28;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60),
      child: Column(children: <Widget>[
        Text("Mobile Computing", style: TextStyle(fontSize: fontSize)),
        Text("Ariane Ernandorena",
            style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
                color: restorAppColors.primary)),
        Text(
          "17035205",
          style: TextStyle(fontSize: fontSize - 4),
        ),
      ]),
    );
  }
}
