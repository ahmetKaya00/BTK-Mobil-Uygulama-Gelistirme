import 'package:firebasedemo/screens/profile_screen.dart';
import 'package:firebasedemo/screens/settings_screen.dart';
import 'package:firebasedemo/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Center(child: Text('Ana Sayfa', style: TextStyle(fontSize: 24))),
    ProfileScreen(),
    SettingsScreen()
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Son Proje'),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
          selectedIndex: _selectedIndex,
          onTop: _onItemTapped),
    );
  }
}