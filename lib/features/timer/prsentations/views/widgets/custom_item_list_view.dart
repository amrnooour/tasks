import 'package:flutter/material.dart';

class CustomItemListView extends StatelessWidget {
  final bool isColor;
  const CustomItemListView({super.key,this.isColor= true});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7,
      width: 53,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: isColor? Colors.yellow : Colors.white),
    );
  }
}