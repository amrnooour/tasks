import 'package:flutter/material.dart';
import 'package:tasks/features/timer/prsentations/views/widgets/timer_body.dart';

class Timer extends StatelessWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text("Timer"),centerTitle: true,),
      body: const TimerBody(),
    );
  }
}