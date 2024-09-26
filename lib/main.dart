import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home/all_hotels.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';

import 'base/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const BottomNavBar(),
        "/all_tickets" : (context) => const AllTickets(),
        "/all_hotels" : (context) => const AllHotels(),
      },
    );
  }
}


