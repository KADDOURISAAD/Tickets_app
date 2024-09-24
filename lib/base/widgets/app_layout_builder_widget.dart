import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomDevider;
  final double width;
  const AppLayoutBuilderWidget({super.key, required this.randomDevider,  this.width=3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrants){
          return Flex(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
            children: List.generate((constrants.constrainWidth() / randomDevider).floor(), (index)=>  SizedBox(
              width: width,height: 1 ,child: const DecoratedBox(decoration:  BoxDecoration(color: Colors.white)),
              
            ))
          );
        }
    );
  }
}
