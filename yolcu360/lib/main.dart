import 'package:flutter/material.dart';
import 'package:yolcu360/screens/home_page.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Yolco 360",
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: HomeScreen(),
    );
  }
}