import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_tickets_taps.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          const SizedBox(height: 40,),
          Text("Tickets" , style: AppStyles.headlineStyle1,),
          const SizedBox(height: 20,),
          const AppTicketsTaps(firstTab: "Upcoming", secondTab: "Previous",),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.only(left: 16),
              child: TicketView(ticket: ticketList[0],
                isColor: true,
              )),

        ],
      ),
    );
  }
}
