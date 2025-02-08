import 'package:firebasedemo/core/ThemeManager.dart';
import 'package:firebasedemo/core/localemanager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<ThemeManager>(context);
    final localManager = Provider.of<LocalManager>(context);

    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(localManager.translate('dark_theme')),
          Switch(
          value: themeManager.themeMode == ThemeMode.dark,
            onChanged: (value){
            themeManager.toggleTheme();
            },
          ),
        ],
      ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(localManager.translate('language')),
              const SizedBox(width: 10),
              DropdownButton<Locale>(
                value: localManager.currentLocale,
                onChanged: (Locale? newLocale){
                  if(newLocale != null){
                    localManager.changedLocale(newLocale);
                  }
                },
                items: const[
                  DropdownMenuItem(
                    value: Locale('en'),
                      child: Text('English'),
                  ),
                  DropdownMenuItem(
                    value: Locale('tr'),
                    child: Text('Türkçe'),
                  ),
                ],
              ),
            ],
          ),
      ],
    );
  }
}