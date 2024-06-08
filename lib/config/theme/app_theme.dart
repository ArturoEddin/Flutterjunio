import 'package:flutter/material.dart';

const custonColor = Color(0xFF5D111f);

const List<Color> themeColor = [
  custonColor,
  Colors.black,
  Colors.orange,
  Colors.yellow,
  Colors.green,
  Colors.blue
];

class AppTheme {
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed:themeColor[5] );
  }
}
