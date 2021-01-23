import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // add it to your class as a static member
  static AudioCache player = AudioCache();

  void playSound({int number}) {
    // (int number)
    // call this method when desired
    player.play('note$number.wav');
  }

  Widget buildKey(Color color, int soundNumber) {
    return Expanded(
      // flex: 1,
      child: FlatButton(
        onPressed: () => playSound(number: soundNumber),
        color: color,
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.blue,1),
              buildKey(Colors.green,2),
              buildKey(Colors.yellow,3),
              buildKey(Colors.brown,4),
              buildKey(Colors.pink,5),
              buildKey(Colors.teal,6),
              buildKey(Colors.cyan,7),
            ],
          ),
        ),
      ),
    );
  }
}
