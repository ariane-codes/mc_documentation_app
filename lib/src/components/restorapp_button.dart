import 'package:a1_documentation/src/components/colors.dart';
import 'package:flutter/material.dart';

class RestorAppButton extends StatelessWidget {
  const RestorAppButton(
      {required this.onPressed, required this.textToShow, super.key});

  final String textToShow;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(
          textToShow,
          style: TextStyle(color: blanchedAlmond[900]),
        ));
  }
}
