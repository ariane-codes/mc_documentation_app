import 'package:a1_documentation/src/components/custom_text_styles.dart';
import 'package:a1_documentation/src/components/header_text.dart';
import 'package:flutter/material.dart';

class TechStackView extends StatelessWidget {
  const TechStackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 10),
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const HeaderText(text: "Tech Stack"),
          SizedBox(
            height: 70,
            child: Image.network(
                "https://www.fiverivers.net/media/1189/flutter-cover.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Text(
              "Flutter is an open-sourced framework developed by Google for developing natively-compiled apps. Personally, I have been working as a software engineer for about 3 years in web development, and I wanted to try my hand with a new framework. This documentation has been developed in Flutter as well.",
              style: CustomTextStyles.blockTextStyle(),
            ),
          ),
          SizedBox(
            height: 100,
            width: 180,
            child: Image.network(
                "https://www.pngitem.com/pimgs/m/116-1166936_sanity-io-logo-png-transparent-png.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Text(
              "I have yet to decide the scope of this project - and whether or not it will need a back-end - but if it will, it is possible that I go with Sanity.io. I have used it before in a personal project and their flexible data modelling framework plus easy provisioning of APIs makes it ideal for this kind of project.",
              style: CustomTextStyles.blockTextStyle(),
            ),
          ),
        ],
      )),
    );
  }
}
