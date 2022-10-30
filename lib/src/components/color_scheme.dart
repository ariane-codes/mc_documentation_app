import 'package:a1_documentation/src/components/colors.dart';
import 'package:flutter/material.dart';

ThemeData defaultThemeData = ThemeData();

ColorScheme restorAppColors = ColorScheme(
    primary: pueblo,
    onPrimary: pueblo,
    secondary: blackPearl,
    onSecondary: blackPearl,
    brightness: defaultThemeData.colorScheme.brightness,
    error: defaultThemeData.colorScheme.error,
    onError: defaultThemeData.colorScheme.onError,
    background: defaultThemeData.colorScheme.background,
    onBackground: defaultThemeData.colorScheme.background,
    surface: defaultThemeData.colorScheme.surface,
    onSurface: defaultThemeData.colorScheme.onSurface);
