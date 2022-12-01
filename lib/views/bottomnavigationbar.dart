import 'package:eamui/views/crew/crew_page.dart';
import 'package:eamui/views/home_page/home.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'message/message_screen.dart';
import 'notification/notification.dart';

class BottomNavItems extends StatefulWidget {
  const BottomNavItems({super.key});

  @override
  State<BottomNavItems> createState() => _BottomNavItemsState();
}

class _BottomNavItemsState extends State<BottomNavItems> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
  }

  final List _widgetOptions = [
    const MyHomePage(),
    const MessageScreen(),
    const NotificationScreen(),
    const CrewPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Icon(Iconsax.home5),
            icon: Icon(Iconsax.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Iconsax.message5),
            icon: Icon(Iconsax.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Iconsax.notification5),
            icon: Icon(Iconsax.notification),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Iconsax.people5),
            icon: Icon(Iconsax.people),
            label: 'Crew',
          ),
        ],
        elevation: 0,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        backgroundColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
