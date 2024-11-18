import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _currentTheme = lightTheme;
  String _currentFont = 'Roboto';

  static final lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    fontFamily: 'Roboto',
  );

  static final darkTheme = ThemeData(
    primarySwatch: Colors.blueGrey,
    brightness: Brightness.dark,
    fontFamily: 'Roboto',
  );

  static final greenTheme = ThemeData(
    primarySwatch: Colors.green,
    fontFamily: 'Courier New',
  );

  static final redTheme = ThemeData(
    primarySwatch: Colors.red,
    fontFamily: 'Arial',
  );

  ThemeData get currentTheme => _currentTheme;

  String get currentFont => _currentFont;

  void setTheme(ThemeData theme) {
    _currentTheme = theme;
    notifyListeners();
  }

  void setFont(String font) {
    _currentFont = font;
    notifyListeners();
  }
}