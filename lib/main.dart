import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int toneNumber) {
    final player = AudioCache();
    player.play('note$toneNumber.wav');
  }

  Expanded buildKey(int toneNumber, Color keyColor) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(toneNumber);
        },
        color: keyColor,
        child: Container(),
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
            children: <Widget>[
              buildKey(1, Colors.red),
              buildKey(2, Colors.orange),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.blue),
              buildKey(7, Colors.purple),
              
            ],
          ),
        ),
      ),
    );
  }
}
