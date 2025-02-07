import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalManager extends ChangeNotifier{
  Locale _currentLocale = const Locale('en');
  Map<String, String> _localizedString = {};

  Locale get currentLocale => _currentLocale;

  String translate(String key){
    return _localizedString[key] ?? key;
  }
  LocalManager(){
    _loadLocale();
  }

  Future<void>changedLocale(Locale locale) async{
    _currentLocale = locale;
    await _saveLocale(locale.languageCode);
    await _loadLanguage();
    notifyListeners();
  }
  Future<void>_loadLanguage()async{
    String jsonString = await rootBundle.loadString('assets/lang/${_currentLocale}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedString = jsonMap.map((key, value) => MapEntry(key, value.toString()));
  }
  Future<void>_saveLocale(String languageCode)async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageCode', languageCode);
  }

  Future<void>_loadLocale()async{
    final prefs = await SharedPreferences.getInstance();
    final savedLanguageCode = prefs.getString('languageCode') ?? 'en';
    _currentLocale = Locale(savedLanguageCode);
    await _loadLanguage();
    notifyListeners();
  }
}