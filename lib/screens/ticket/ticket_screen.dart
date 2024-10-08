import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_tickets_taps.dart';
import 'package:ticket_app/screens/ticket/widget/ticket_positioned_circle.dart';

import '../../base/res/media.dart';
import '../../base/widgets/app_column_text_layout.dart';
import '../../base/widgets/app_layout_builder_widget.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  late int ticketIndex = 0;
  @override
  void didChangeDependencies() {
    if(ModalRoute.of(context)!.settings.arguments != null){
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      ticketIndex =args["index"];
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: const Text("Tickets"),
        backgroundColor: AppStyles.bgColor,
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            children: [
           /*   const SizedBox(
                height: 40,
              ),
              Text(
                "Tickets",
                style: AppStyles.headlineStyle1,
              ),
              const SizedBox(
                height: 20,
              ),*/
              const AppTicketsTaps(
                firstTab: "Upcoming",
                secondTab: "Previous",
              ),
              const SizedBox(
                height: 20,
              ),
              // white tickket
              Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: TicketView(
                    ticket: ticketList[ticketIndex],
                    isColor: true,
                  )),
              const SizedBox(
                height: 1,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: AppStyles.TicketColor,
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          alignment: CrossAxisAlignment.start,
                          topText: "Flutter DB",
                          bottomText: "Passenger",
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          alignment: CrossAxisAlignment.end,
                          topText: "5221 36869",
                          bottomText: "passport",
                          isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppLayoutBuilderWidget(
                      randomDevider: 15,
                      width: 5,
                      isColor: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          alignment: CrossAxisAlignment.start,
                          topText: "25412 254414612",
                          bottomText: "Number OF E-ticket",
                          isColor: true,
                        ),
                        AppColumnTextLayout(
                          alignment: CrossAxisAlignment.end,
                          topText: "B426652",
                          bottomText: "Booking code",
                          isColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppLayoutBuilderWidget(
                      randomDevider: 15,
                      width: 5,
                      isColor: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  height: 25,
                                  AppMedia.visaLogo,
                                ),
                                Text(
                                  "***2462",
                                  style: AppStyles.headlineStyle3,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Payement methode",
                              style: AppStyles.headlineStyle4,
                            ),
                          ],
                        ),
                        const AppColumnTextLayout(
                          alignment: CrossAxisAlignment.end,
                          topText: "\$249.99",
                          bottomText: "Price",
                          isColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              //  bottom of tiekt details
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    color: AppStyles.TicketColor,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(21),
                      bottomLeft: Radius.circular(21),
                    )),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      height: 70,
                      data: "https://github.com/KADDOURISAAD",
                      drawText: false,
                      barcode: Barcode.code128(),
                      color: AppStyles.textColor,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // ? colorful ticket
              Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: TicketView(
                    ticket: ticketList[ticketIndex],
                  )),
            ],
          ),
          const TicketPositionedCircle(pos: true,),
          const TicketPositionedCircle(pos: null,),
        ],
      ),
    );
  }
}
