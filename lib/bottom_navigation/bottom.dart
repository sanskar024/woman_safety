import 'package:flutter/material.dart';
import 'package:women_safety/bottom_navigation/chat.dart';
import 'package:women_safety/bottom_navigation/contackpage.dart';
import 'package:women_safety/bottom_navigation/profile.dart';
import 'package:women_safety/home_page.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _currentIndex = 0;

  // List of pages
  final List<Widget> pages = [
    ContactPage(),
    HomePage(),
    profile(),
    Chat(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_phone),
            label: "Contact",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
          ),
        ],
      ),
    );
  }
}
