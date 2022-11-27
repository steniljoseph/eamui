import 'package:eamui/views/home_page/home.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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

  final List<Widget> _widgetOptions = <Widget>[
    const MyHomePage(),
    const Text("data"),
    const Text("data"),
    const Text("data")
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
            label: 'Library',
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
        // fixedColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        backgroundColor: Colors.black,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }
}
