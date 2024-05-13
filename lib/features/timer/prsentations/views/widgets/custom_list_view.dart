import 'package:flutter/material.dart';
import 'package:tasks/features/timer/prsentations/views/widgets/custom_item_list_view.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 6,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) =>  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: CustomItemListView(isColor: index==5?false:true,),
        ),),
    );
  }
}