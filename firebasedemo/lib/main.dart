import 'package:firebasedemo/core/ThemeManager.dart';
import 'package:firebasedemo/core/localemanager.dart';
import 'package:firebasedemo/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ThemeManager()),
          ChangeNotifierProvider(create: (_) => LocalManager()),
        ],
      child: Consumer2<ThemeManager, LocalManager>(
        builder: (context, themeManager, localManager, child){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Firebase Demo',
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: themeManager.themeMode,
            locale: localManager.currentLocale,
            localizationsDelegates: const[
              GlobalMaterialLocalizations.delegate, // Doğrusu bu
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate, // Doğrusu bu
            ],
            supportedLocales: const[
              Locale('en'),
              Locale('tr')
            ],
          );
        },
      ),
    );
  }
}