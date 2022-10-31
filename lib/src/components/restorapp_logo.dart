import 'package:a1_documentation/src/constants/color_scheme.dart';
import 'package:flutter/material.dart';

/// Displays the welcome view shown upon opening
/// the application.

class RestorAppLogo extends StatelessWidget {
  const RestorAppLogo(
      {this.customFontSize, this.customUniformColor, super.key});

  final double? customFontSize;
  final Color? customUniformColor;

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
                    color: customUniformColor ?? restorAppColors.primary),
                children: <TextSpan>[
              TextSpan(
                  text: "App",
                  style: TextStyle(
                      color: customUniformColor ?? restorAppColors.secondary))
            ])));
  }
}
