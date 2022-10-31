import 'package:a1_documentation/src/components/restorapp_button.dart';
import 'package:a1_documentation/src/components/restorapp_logo.dart';
import 'package:a1_documentation/src/welcome/welcome_info.dart';
import 'package:flutter/material.dart';

/// Displays the welcome view shown upon opening
/// the application.

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(children: <Widget>[
          const Padding(
              padding: EdgeInsets.symmetric(vertical: 60),
              child: RestorAppLogo(customFontSize: 60)),
          const Expanded(child: WelcomeInfo()),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: RestorAppButton(
                  onPressed: () =>
                      {Navigator.restorablePushNamed(context, "/listView")},
                  textToShow: "Begin"))
        ]),
      ),
    ));
  }
}
