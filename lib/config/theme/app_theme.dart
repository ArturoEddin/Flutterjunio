import 'package:flutter/material.dart';

const _custonColor = Color(0xFF5D111f);

const List<Color> _themeColor = [
  _custonColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];

class AppTheme {
  final int selectColor;

  AppTheme({required this.selectColor});

  

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _themeColor[selectColor]);
  }
}
