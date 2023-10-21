import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lev/Screen/HomeScreen.dart';
import 'package:lev/Screen/ScheduleScreen.dart';
import 'package:lev/Screen/messageScreen.dart';
import 'package:lev/Screen/settingScreen.dart';
import 'package:lev/utils/colourTheme.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  final _screen = [
    //HomeScreen
    HomeScreen(),
    // Message screen

    MessageScreen(),
    // schedule screen
    ScheduleScreen(),
    //setting screen
    SettingScrenn(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screen[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: BackgroundColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: BackgroundColor2,
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_text_fill),
              label: "Message",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: "Schedule",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
