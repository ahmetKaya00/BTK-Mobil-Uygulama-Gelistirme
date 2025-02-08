import 'package:flutter/material.dart';
class BottomNavBar extends StatelessWidget{
  final int selectedIndex;
  final Function(int) onTop;

  const BottomNavBar({required this.selectedIndex, required this.onTop});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
        onTap: onTop,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        items: const[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Ana Sayfa'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Ayarlar'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'CRUD'
          )
        ]
    );
  }
}