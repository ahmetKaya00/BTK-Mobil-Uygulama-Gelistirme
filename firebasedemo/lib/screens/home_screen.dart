import 'package:firebasedemo/core/localemanager.dart';
import 'package:firebasedemo/screens/profile_screen.dart';
import 'package:firebasedemo/screens/settings_screen.dart';
import 'package:firebasedemo/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    final localManager = Provider.of<LocalManager>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(localManager.translate('title')),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Center(
            child: Text(
              localManager.translate('home'),
              style: TextStyle(fontSize: 24),
            ),
          ),
          ProfileScreen(),
          SettingsScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
          selectedIndex: _selectedIndex,
          onTop: _onItemTapped),
    );
  }
}