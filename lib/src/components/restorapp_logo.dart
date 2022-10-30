import 'package:a1_documentation/src/components/color_scheme.dart';
import 'package:flutter/material.dart';

/// Displays the welcome view shown upon opening
/// the application.

class RestorAppLogo extends StatelessWidget {
  const RestorAppLogo({this.customFontSize, super.key});

  final double? customFontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: RichText(
            text: TextSpan(
                text: "Restor",
                style: TextStyle(
                    fontFamily: "Rancho",
                    fontSize: customFontSize ?? 40,
                    color: restorAppColors.primary),
                children: <TextSpan>[
              TextSpan(
                  text: "App",
                  style: TextStyle(color: restorAppColors.secondary))
            ])));
  }
}
