import 'package:flutter/material.dart';
import 'package:tasks/features/timer/prsentations/views/widgets/custom_list_view.dart';
import 'package:tasks/features/timer/prsentations/views/widgets/custom_row_of_timer.dart';

class TimerBody extends StatelessWidget {
  const TimerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomListView(),
          SizedBox(height: 15,),
          CustomRowOfTimer(),
        ],
      ),
    );
  }
}