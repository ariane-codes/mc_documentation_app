import 'package:a1_documentation/src/constants/color_scheme.dart';
import 'package:a1_documentation/src/components/restorapp_logo.dart';
import 'package:flutter/material.dart';

class SketchesView extends StatelessWidget {
  const SketchesView({super.key});

  static const routeName = '/goals';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[Text("The sketches go here")],
    );
  }
}
