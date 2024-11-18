import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen', style: TextStyle(fontFamily: themeProvider.currentFont)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, Flutter!',
              style: TextStyle(fontSize: 24, fontFamily: themeProvider.currentFont),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Button 1', style: TextStyle(fontFamily: themeProvider.currentFont)),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Button 2', style: TextStyle(fontFamily: themeProvider.currentFont)),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Button 3', style: TextStyle(fontFamily : themeProvider.currentFont)),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              child: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}