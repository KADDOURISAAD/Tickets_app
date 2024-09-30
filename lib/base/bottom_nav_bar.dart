import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/search/search_screen.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

import '../screens/home/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // List is iterate using index
  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const Center(child: Text("Profile"))
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: appScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526400),
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.home_48_regular),
              activeIcon: Icon(FluentIcons.home_48_filled),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.search_48_regular),
              activeIcon: Icon(FluentIcons.search_48_filled),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.ticket_horizontal_24_regular),
              activeIcon: Icon(FluentIcons.ticket_horizontal_24_filled),
              label: "Tickets"),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.person_48_regular),
              activeIcon: Icon(FluentIcons.person_48_filled),
              label: "Profile"),
        ],
      ),
    );
  }
}
