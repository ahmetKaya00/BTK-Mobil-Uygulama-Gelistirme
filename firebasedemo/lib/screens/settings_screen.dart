import 'package:firebasedemo/core/ThemeManager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<ThemeManager>(context);
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Koyu Tema'),
          Switch(
          value: themeManager.themeMode == ThemeMode.dark,
            onChanged: (value){
            themeManager.toggleTheme();
            },
          )
        ],
      ),
    );
  }
}