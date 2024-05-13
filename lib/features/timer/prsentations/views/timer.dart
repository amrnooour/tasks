import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/features/timer/prsentations/provider/timer_provider.dart';
import 'package:tasks/features/timer/prsentations/views/widgets/timer_body.dart';

class Timer extends StatelessWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerProvider>(
      create: (context) => TimerProvider(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(title: const Text("Timer"),centerTitle: true,),
        body: const TimerBody(),
      ),
    );
  }
}