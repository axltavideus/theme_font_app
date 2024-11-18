import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _currentTheme = lightTheme;
  String _currentFont = 'Roboto';

  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(
      surface: Colors.white,
    ),
    fontFamily: 'Roboto',
    scaffoldBackgroundColor: Colors.white,
  );

  static final greenTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green).copyWith(
      surface: Colors.green[50],
    ),
    scaffoldBackgroundColor: Colors.green[50],
  );

  static final redTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(
      surface: Colors.red[50],
    ),
    scaffoldBackgroundColor: Colors.red[50],
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
