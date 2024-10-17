
import 'package:flutter/material.dart';

Color _customColor = const Color.fromARGB(255, 158, 14, 236);
List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];

class AppTheme {
  final int selectedColor;
  
  AppTheme({
    this.selectedColor = 0,
  }): assert(selectedColor >= 0 && selectedColor <= _colorThemes.length -1, 'Color out of index');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor]
    );
  }
}