import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home/widgets/hotel.dart';

import '../../base/utils/app_json.dart';
import '../../base/widgets/ticket_view.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Column(
              children:  hotelList.map((singleHotel) => Hotel(hotel:singleHotel)
                  ).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
