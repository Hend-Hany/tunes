import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Item {
  final String sound;
  final Color color;

  Item({
    required this.color,
    required this.sound,
  });

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
