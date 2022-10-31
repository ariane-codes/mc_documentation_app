import 'package:a1_documentation/src/constants/color_scheme.dart';
import 'package:flutter/material.dart';

class CustomTextStyles {
  static TextStyle blockTextStyle(
      {double? customFontSize, Color? customColor}) {
    return TextStyle(
        fontFamily: "Inter",
        fontSize: customFontSize ?? 16,
        color: customColor ?? restorAppColors.secondary,
        fontWeight: FontWeight.normal);
  }

  static TextStyle restorAppLogoStyle(
      {double? customFontSize, Color? customColor}) {
    return TextStyle(
        fontFamily: "Rancho",
        color: customColor ?? restorAppColors.secondary,
        fontSize: customFontSize ?? 20);
  }

  static TextSpan inTextRestorApp(
      {double? customFontSize,
      Color? customColor,
      List<InlineSpan>? children}) {
    return TextSpan(
        text: "RestorApp",
        style: CustomTextStyles.restorAppLogoStyle(
            customColor: customColor, customFontSize: customFontSize),
        children: children);
  }

  static TextSpan styledTextSpan(text,
      {double? customFontSize,
      Color? customColor,
      List<InlineSpan>? children}) {
    return TextSpan(
        text: text,
        style: CustomTextStyles.blockTextStyle(
            customColor: customColor, customFontSize: customFontSize),
        children: children);
  }
}
