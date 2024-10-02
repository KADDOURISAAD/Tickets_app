import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_tickets_taps.dart';

import '../../base/widgets/app_column_text_layout.dart';
import '../../base/widgets/app_layout_builder_widget.dart';

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
              )
          ),
          const SizedBox(height: 1,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15 ,vertical: 20),
            color: AppStyles.TicketColor,
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(alignment: CrossAxisAlignment.start,topText: "Flutter DB",bottomText: "Passenger",isColor: true,),
                    AppColumnTextLayout(alignment: CrossAxisAlignment.end,topText: "5221 36869",bottomText: "passport",isColor: true,),

                  ],
                ),
                 SizedBox(height: 20,),
                AppLayoutBuilderWidget(randomDevider: 15,width: 5,isColor: false,),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnTextLayout(alignment: CrossAxisAlignment.start,topText: "25412 254414612",bottomText: "Number OF E-ticket",isColor: true,),
                    AppColumnTextLayout(alignment: CrossAxisAlignment.end,topText: "B426652",bottomText: "Booking code",isColor: true,),

                  ],
                ),
                SizedBox(height: 20,),
                AppLayoutBuilderWidget(randomDevider: 15,width: 5,isColor: false,),
                SizedBox(height: 20,),

              ],
            ),

          )

        ],
      ),
    );
  }
}
