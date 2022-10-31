import 'package:a1_documentation/src/constants/colors.dart';
import 'package:flutter/material.dart';

ThemeData defaultThemeData = ThemeData();

ColorScheme restorAppColors = ColorScheme(
    primary: pueblo,
    onPrimary: blanchedAlmond,
    secondary: blackPearl,
    onSecondary: blanchedAlmond,
    tertiary: blueStone,
    onTertiary: blanchedAlmond,
    brightness: defaultThemeData.colorScheme.brightness,
    error: defaultThemeData.colorScheme.error,
    onError: defaultThemeData.colorScheme.onError,
    background: defaultThemeData.colorScheme.background,
    onBackground: defaultThemeData.colorScheme.background,
    surface: defaultThemeData.colorScheme.surface,
    onSurface: defaultThemeData.colorScheme.onSurface);
