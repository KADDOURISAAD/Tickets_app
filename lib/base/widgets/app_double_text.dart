import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({super.key, required this.bigText, required this.smallText});
  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style:AppStyles.headlineStyle2,),
        InkWell(
          onTap:(){} ,
          child: Text(smallText, style:AppStyles.textStyle.copyWith(
            color: AppStyles.primaryColor,
          ),),
        ),

      ],
    );
  }
}
