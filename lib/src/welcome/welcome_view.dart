import 'package:a1_documentation/src/components/restorapp_logo.dart';
import 'package:flutter/material.dart';

/// Displays the welcome view shown upon opening
/// the application.

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Center(
        child: RestorAppLogo(),
      ),
    ));
  }
}
