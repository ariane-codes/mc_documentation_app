import 'package:a1_documentation/src/constants/color_scheme.dart';
import 'package:flutter/material.dart';

/// Displays the welcome view shown upon opening
/// the application.

class UserPersonaView extends StatelessWidget {
  const UserPersonaView({required this.personaKey, super.key});

  final String? personaKey;

  @override
  Widget build(BuildContext context) {
    return Text("Hello $personaKey");
  }
}
