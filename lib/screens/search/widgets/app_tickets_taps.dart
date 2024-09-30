import 'package:flutter/material.dart';

class AppTicketsTaps extends StatelessWidget {
  final String firstTab;
  final String secondTab;
  const AppTicketsTaps({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color(0xFFF4F6FD),
      ),
      child:  Row(
          children: [
             AppTabs(tabText: firstTab, ),
            AppTabs(tabText: secondTab, tabBorder: true,TtabColor: true,),
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

