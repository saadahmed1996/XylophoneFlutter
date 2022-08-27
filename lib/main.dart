import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  //reduce repeated code
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildLines({Color color, int soundNumber}){
    return  Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: (){
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildLines(color: Colors.red, soundNumber: 1),
              buildLines(color: Colors.green, soundNumber: 2),
              buildLines(color: Colors.blue, soundNumber: 3),
              buildLines(color: Colors.yellow, soundNumber: 4),
              buildLines(color: Colors.orange, soundNumber: 5),
              buildLines(color: Colors.purple, soundNumber: 6),
              buildLines(color: Colors.brown, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
