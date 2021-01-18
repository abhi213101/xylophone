import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Xylophone(),
      ),
    ),
  );
}

void sound(int key) {
  AudioCache player = AudioCache();
  player.play('note$key.wav');
}

Expanded getKey(int key, Color color){
  return Expanded(
    child: FlatButton(
      onPressed: () {
        sound(key);
      },
      child: Container(
        color: color,
      ),
    ),
  );
}


class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          getKey(1, Colors.purple),
          getKey(2, Colors.blue[900]),
          getKey(3, Colors.lightBlue),
          getKey(4, Colors.green),
          getKey(5, Colors.yellow),
          getKey(6, Colors.orange),
          getKey(7, Colors.red)
        ],
      ),
    );
  }
}
