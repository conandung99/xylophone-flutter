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
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: () => playSound(number: 1),
                  color: Colors.blue,
                  child: Center(
                    child: null,
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () => playSound(number: 2),
                  color: Colors.green,
                  child: Center(child: null),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () => playSound(number: 3),
                  color: Colors.yellow,
                  child: Center(
                    child: null,
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                    onPressed: () => playSound(number: 4),
                    color: Colors.brown,
                    child: Center(
                      child: null,
                    )),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () => playSound(number: 5),
                  color: Colors.pink,
                  child: Center(
                    child: null,
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () => playSound(number: 6),
                  color: Colors.teal,
                  child: Center(
                    child: null,
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () => playSound(number: 7),
                  color: Colors.cyan,
                  child: Center(
                    child: null,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
