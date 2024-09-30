

import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/screens/search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/app_tickets_taps.dart';
import 'package:ticket_app/screens/search/widgets/find_ticket.dart';
import 'package:ticket_app/screens/search/widgets/ticket_promotion.dart';

import '../../base/widgets/app_double_text.dart';

class SearchScreen extends StatelessWidget {

  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          const SizedBox(height: 40,),
          Text("What are\nyou looking for ?", style: AppStyles.headlineStyle1.copyWith(fontSize: 35),),
          const SizedBox(height: 20,),
          const AppTicketsTaps(firstTab: "All Tickets", secondTab: "Hotels",),
          const SizedBox(height: 25,),
          const AppTextIcon(text: "Departure" ,icon: Icons.flight_takeoff_rounded,),
          const SizedBox(height: 20,),
          const AppTextIcon(text: "Arrival" ,icon: Icons.flight_land_rounded,),
          const SizedBox(height: 25,),
          const FindTicket(),
          const SizedBox(height: 40,),
          AppDoubleText(
            bigText: "Upcoming Flights",
            smallText: "view all",
            func: () => Navigator.pushNamed(context, "/all_tickets") ,
          ),
          const SizedBox(height: 15,),
          const TicketPromotion(),

        ],
      ),
    );
  }
}
