import 'package:flutter/material.dart';
import 'package:tasks/features/audio_player/widgets/audio_player_body.dart';

class PlayAudioPlayer extends StatelessWidget {
  const PlayAudioPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Play Audio Player"),centerTitle: true,),
      body: const AudioPlayerBody(),
    );
  }
}