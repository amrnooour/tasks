import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/features/timer/prsentations/provider/timer_provider.dart';
import 'package:tasks/features/timer/prsentations/views/widgets/custom_list_view.dart';
import 'package:tasks/features/timer/prsentations/views/widgets/custom_row_of_timer.dart';

class TimerBody extends StatefulWidget {
  const TimerBody({super.key});

  @override
  State<TimerBody> createState() => _TimerBodyState();
}

class _TimerBodyState extends State<TimerBody> {
  late TimerProvider timer;
  @override
  void initState() {
    timer = Provider.of(context,listen: false);
    timer.startTimer();
    super.initState();
  }
  @override
  void dispose() {
    timer.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.all(25),
      child: Consumer<TimerProvider>(
        builder: (context, value, child) {
          return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomListView(),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomRowOfTimer(
                onTap: timer.startEnable?timer.continueTimer : timer.stopTimer,
                icon: timer.startEnable?Icons.play_arrow : Icons.pause ,
                hours: timer.hour,
                minutes: timer.minute,
                seconds: timer.seconds,
              ),
            ),
          ],
        );
        },
      ),
    );
  }
}