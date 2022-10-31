import 'package:a1_documentation/src/components/custom_text_styles.dart';
import 'package:a1_documentation/src/constants/color_scheme.dart';
import 'package:flutter/material.dart';

TextStyle headerTextStyle = TextStyle(
    color: restorAppColors.tertiary, fontSize: 23, fontWeight: FontWeight.w700);

TextStyle restorAppHeaderTextStyle = CustomTextStyles.restorAppLogoStyle(
    customFontSize: 28, customColor: restorAppColors.tertiary);

class HeaderText extends StatelessWidget {
  const HeaderText({super.key, required this.text, this.customFontFamily});

  final String text;
  final String? customFontFamily;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Text(text, style: headerTextStyle),
    );
  }
}
