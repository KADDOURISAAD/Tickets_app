import 'package:flutter/material.dart';

class AppTicketsTaps extends StatelessWidget {
  const AppTicketsTaps({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFF4F6FD),
      ),
      child: const Row(
          children: [
             AppTabs(tabText: "All Tickets", ),
            AppTabs(tabText: "Hotels", tabBorder: true,TtabColor: true,),
          ],
      ),
    );
  }
}


class AppTabs extends StatelessWidget {
  final String tabText;
  final bool tabBorder;
  final bool TtabColor;
  const AppTabs({super.key,  this.tabText ="",  this.tabBorder = false,  this.TtabColor = false,});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width:  size.width*0.44,
      decoration:  BoxDecoration(
        color: TtabColor==false?Colors.white:Colors.transparent,
        borderRadius: tabBorder==false?const BorderRadius.horizontal(left: Radius.circular(50)):const BorderRadius.horizontal(right: Radius.circular(50)),
      ),
      child:  Center(child: Text(tabText)),
    );
  }
}

