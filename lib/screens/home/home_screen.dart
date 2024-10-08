import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_app/base/res/app_routes.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/home/widgets/hotel.dart';


import '../../base/utils/app_json.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  Colume
    //  listview (Easy)
    // listview.builder
    // Expand
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      // we wont scrollable effect
      body: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning",
                          style: AppStyles.headlineStyle3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Book Tickets ",
                          style: AppStyles.headlineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: const Row(
                    children: [
                      Icon(FluentIcons.search_20_regular,
                          color: Color(0xFFBFC205)),
                      Text("Search"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                 AppDoubleText(
                  bigText: "Upcoming Flights",
                  smallText: "view all",
                  func: () => Navigator.pushNamed(context, AppRoutes.allTickets) ,
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,

                    child: Row(
                      children: ticketList.take(2).map((singleTicket) => TicketView(ticket:singleTicket)
                      ).toList(),
                    ),
                ),
                const SizedBox(
                  height: 40,
                ),
                AppDoubleText(
                  bigText: "Hotels",
                  smallText: "view all",
                   func: () => Navigator.pushNamed(context, AppRoutes.allHotels) ,
                ),
                const SizedBox(
                  height: 20,
                ),
                  SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child: Row(
                      children: hotelList.map((singleHotel) => Hotel(hotel:singleHotel)
                      ).toList(),
                    ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
