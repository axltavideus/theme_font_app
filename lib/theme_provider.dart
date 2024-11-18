import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _currentTheme = lightTheme;
  String _currentFont = 'Roboto';

  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(
      surface: Colors.white,  // Set the surface to white for light theme
    ),
    fontFamily: 'Roboto',
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.black),  // Set default text color for light theme
      bodyMedium: TextStyle(color: Colors.black),
      headlineLarge: TextStyle(color: Colors.black),  // Adjust headline as well
      headlineMedium: TextStyle(color: Colors.black),
    ),
  );

  static final greenTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green).copyWith(
      surface: Colors.green[50],  // Set a light green surface color for green theme
    ),
    scaffoldBackgroundColor: Colors.green[50],
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.black),  // Text color for green theme
      bodyMedium: TextStyle(color: Colors.black),
      headlineLarge: TextStyle(color: Colors.black),
      headlineMedium: TextStyle(color: Colors.black),
    ),
  );

  static final redTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(
      surface: Colors.red[50],  // Set a light red surface color for red theme
    ),
    scaffoldBackgroundColor: Colors.red[50],
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.black),  // Text color for red theme
      bodyMedium: TextStyle(color: Colors.black),
      headlineLarge: TextStyle(color: Colors.black),
      headlineMedium: TextStyle(color: Colors.black),
    ),
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
