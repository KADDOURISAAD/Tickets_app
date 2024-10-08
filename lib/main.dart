import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home/all_hotels.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';
import 'package:ticket_app/screens/hotel_detail.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

import 'base/bottom_nav_bar.dart';
import 'base/res/app_routes.dart';

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
        AppRoutes.homePage: (context) => const BottomNavBar(),
        AppRoutes.allTickets : (context) => const AllTickets(),
        AppRoutes.allHotels : (context) => const AllHotels(),
        AppRoutes.ticketScreen : (context) => const TicketScreen(),
        AppRoutes.hotelDetail : (context) => const HotelDetail(),

      },
    );
  }
}


