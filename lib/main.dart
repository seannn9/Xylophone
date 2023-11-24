import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
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
        TextButton(
          onPressed: () {
            final player = AudioPlayer();
            player.play(AssetSource("note1.wav"));
          },
          child: Container(height: 50.0, color: Colors.red),
        ),
      ],
    ))));
  }
}
