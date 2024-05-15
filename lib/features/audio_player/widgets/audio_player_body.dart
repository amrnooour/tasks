import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AudioPlayerBody extends StatefulWidget {
  const AudioPlayerBody({super.key});

  @override
  State<AudioPlayerBody> createState() => _AudioPlayerBodyState();
}

class _AudioPlayerBodyState extends State<AudioPlayerBody> {
  bool isPlaying = false;
  final AudioPlayer player = AudioPlayer();

  Future<void> playAudio() async {
    try {
      await player.play(AssetSource('Farid _ Muslim - Margealesh (Official Music Video) _ (فريد و مسلم - مرجعليش (الكليب الرسمي(MP3_160K).mp3')); // Replace with your asset filename
      setState(() => isPlaying = true);
    } catch (e) {
      print('Error playing audio: $e');
    }
  }

  Future<void> pauseAudio() async {
    await player.pause();
    setState(() => isPlaying = false);
  }

  @override
  void dispose() {
    super.dispose();
    player.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        const Icon(Icons.music_note,size: 30,color: Colors.white,),
        const SizedBox(width: 10,),
        isPlaying?Container(
          height: 3,
          width: 150,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.yellow),
        ):Container(
          height: 3,
          width: 150,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white),
        ),
        const SizedBox(width: 10,),
        IconButton(onPressed: isPlaying?pauseAudio:playAudio, icon: Icon(isPlaying?Icons.pause:Icons.play_arrow),iconSize: 30,),
      ],),
    );
  }
}