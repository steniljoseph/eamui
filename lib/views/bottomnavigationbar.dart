import 'package:eamui/views/home_page/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    MyHomePage(),
    Text("data"),
    Text("data"),
    Text("data")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.notification),
            label: 'Library',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.people),
            label: 'Library',
          ),
        ],
        elevation: 0,
        currentIndex: _selectedIndex,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }
}
