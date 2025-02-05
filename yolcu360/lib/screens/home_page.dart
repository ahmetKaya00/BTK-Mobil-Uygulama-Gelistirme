import 'package:flutter/material.dart';
import 'package:yolcu360/screens/account_page.dart';
import 'package:yolcu360/screens/campaing_page.dart';
import 'package:yolcu360/screens/more_page.dart';
import 'package:yolcu360/screens/search_page.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  int _selectIndex = 0;

  final List<Widget> _tabs = [
    SearchTab(),
    CampaingPage(),
    AccountPage(),
    MorePage(),

  ];

  void _onItemTapped(int index){
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectIndex,
        children: _tabs,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue.shade800,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Ara"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.travel_explore),
              label: "Kapmanyalar"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Hesabım"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.more),
              label: "More"
          )
        ],
      ),
    );
  }
}