import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // add it to your class as a static member
  static AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: FlatButton(
              onPressed: () {
                // or as a local variable
                final player = AudioCache();

                // call this method when desired
                player.play('note1.wav');
              },
              child: Center(
                child: Text('Click Me'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
