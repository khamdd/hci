import 'package:flutter/material.dart';
import 'package:travel_app/pages/chatPage.dart';
import 'package:travel_app/pages/homePage.dart';
import 'package:travel_app/pages/profilePage.dart';
import 'package:travel_app/pages/tripPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    TripPage(),
    ChatPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental),
            label: 'Trip',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Profile',
            backgroundColor: Colors.blue,
          ),
        ],
        selectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
