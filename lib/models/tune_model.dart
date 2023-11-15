import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final Color tuneContainerColor;
  final String soundPath;

  const TuneModel({required this.tuneContainerColor, required this.soundPath});

  void playSound() {
    final audioPlayer = AudioPlayer();
    audioPlayer.play(AssetSource(soundPath));
  }
}
