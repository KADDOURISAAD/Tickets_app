import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/app_routes.dart';

import '../../base/utils/app_json.dart';
import '../../base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map((singleTicket) => GestureDetector(
                onTap: (){
                  var index =  ticketList.indexOf(singleTicket);
                  Navigator.pushNamed(context, AppRoutes.ticketScreen, arguments: {
                    "index" : index,
                  });

                },
                    child: Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: TicketView(ticket: singleTicket, wholeScreen: true,)),
                  ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
