import 'package:a1_documentation/src/components/color_scheme.dart';
import 'package:flutter/material.dart';

/// Displays the welcome view shown upon opening
/// the application.

class RestorAppLogo extends StatelessWidget {
  const RestorAppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: "Restor",
            style: TextStyle(
                fontFamily: "Rancho",
                fontSize: 40,
                color: restorAppColors.primary),
            children: <TextSpan>[
          TextSpan(
              text: "App", style: TextStyle(color: restorAppColors.secondary))
        ]));
  }
}
