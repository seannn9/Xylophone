import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

void playSound(int num) {
  final player = AudioPlayer();
  player.play(AssetSource("note$num.wav"));
}

Expanded keys(int num, Color c) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
          backgroundColor: c,
          shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero)),
      onPressed: () {
        playSound(num);
      },
      child: Container(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SafeArea(
                child: Column(
      children: [
        keys(1, Colors.red),
        keys(2, Colors.orange),
        keys(3, Colors.yellow),
        keys(4, Colors.green),
        keys(5, Colors.teal),
        keys(6, Colors.blue),
        keys(7, Colors.indigo)
      ],
    ))));
  }
}
