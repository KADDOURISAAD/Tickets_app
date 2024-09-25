import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layout_builder_widget.dart';
import 'package:ticket_app/base/widgets/big_circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class TicketView extends StatelessWidget {
  final Map<String,dynamic> ticket;
  final bool wholeScreen;
  const TicketView({super.key, required this.ticket,  this.wholeScreen=false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin:  EdgeInsets.only(right: wholeScreen==true?0:16 ),
        child: Column(
          children: [
            // Blue Part of th ticketr
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  // Show departure and destination with icons first line
                  Row(
                    children: [
                       TextStyleThird(
                        text: ticket["from"]["code"],
                      ),
                      // ticket Icon
                      Expanded(
                        child: Container(),
                      ),
                      const BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: AppLayoutBuilderWidget(
                                randomDevider: 6,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                  // 90 = 1.57(r)
                                  angle: 1.57,
                                  child: const Icon(
                                    Icons.local_airport_rounded,
                                    color: Colors.white,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      const BigDot(),
                      Expanded(
                        child: Container(),
                      ),
                       TextStyleThird(
                        text: ticket["to"]["code"],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  // Show departure and destination names with time
                  Row(
                    children: [
                       SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["from"]["name"],
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                        TextStyleFourth(
                        text: ticket["flying_time"],
                      ),
                      Expanded(
                        child: Container(),
                      ),
                       SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket["to"]["name"],
                          align: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // circles and dots
            Container(
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(
                    isRight: false,
                  ),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                    randomDevider: 16,
                    width: 6,
                  )),
                  BigCircle(
                    isRight: true,
                  ),
                ],
              ),
            ),
            // orange part
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21)),
              ),
              child:  Column(
                children: [
                  // Show departure and destination with icons first line
                  // Show departure and destination names with time
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(alignment: CrossAxisAlignment.start,topText: ticket["date"],bottomText: "Date",),
                      AppColumnTextLayout(alignment: CrossAxisAlignment.center,topText: ticket["departure_time"],bottomText: "Departure time",),
                      AppColumnTextLayout(alignment: CrossAxisAlignment.end,topText: ticket["number"].toString(),bottomText: "Number",),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
