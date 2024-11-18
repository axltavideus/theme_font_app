import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings', style: TextStyle(fontFamily: themeProvider.currentFont)),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Light Theme', style: TextStyle(fontFamily: themeProvider.currentFont)),
            onTap: () => themeProvider.setTheme(ThemeProvider.lightTheme),
          ),
          ListTile(
            title: Text('Dark Theme', style: TextStyle(fontFamily: themeProvider.currentFont)),
            onTap: () => themeProvider.setTheme(ThemeProvider.darkTheme),
          ),
          ListTile(
            title: Text('Green Theme', style: TextStyle(fontFamily: themeProvider.currentFont)),
            onTap: () => themeProvider.setTheme(ThemeProvider.greenTheme),
          ),
          ListTile(
            title: Text('Red Theme', style: TextStyle(fontFamily: themeProvider.currentFont)),
            onTap: () => themeProvider.setTheme(ThemeProvider.redTheme),
          ),
          Divider(),
          ListTile(
            title: Text('Roboto Font', style: TextStyle(fontFamily: themeProvider.currentFont)),
            onTap: () => themeProvider.setFont('Roboto'),
          ),
          ListTile(
            title: Text('Courier New Font', style: TextStyle(fontFamily: themeProvider.currentFont)),
            onTap: () => themeProvider.setFont('Courier New'),
          ),
          ListTile(
            title: Text('Times New Roman', style: TextStyle(fontFamily: themeProvider.currentFont)),
            onTap: () => themeProvider.setFont('Times New Roman'),
          ),
        ],
      ),
    );
  }
}