import 'package:flutter/material.dart';
import 'package:tasks/features/audio_player/audio_player.dart';

void main() {
  runApp(const Tasks());
}
class Tasks extends StatelessWidget {
  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlayAudioPlayer(),
    );
  }
}
