import 'package:a1_documentation/src/components/colors.dart';
import 'package:flutter/material.dart';

class RestorAppButton extends StatelessWidget {
  const RestorAppButton(
      {this.customFontSize,
      required this.onPressed,
      required this.textToShow,
      super.key});

  final String textToShow;
  final VoidCallback onPressed;
  final double? customFontSize;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      alignment: Alignment.center,
      widthFactor: 0.7,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(20, 50))),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              textToShow,
              style: TextStyle(
                  color: blanchedAlmond[900], fontSize: customFontSize ?? 20),
            ),
          )),
    );
  }
}
