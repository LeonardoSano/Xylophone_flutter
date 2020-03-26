import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound (int i){
    final player = AudioCache();
    player.play('note$i.wav');
  }

  Expanded buildButton({Color color, int number}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
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
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildButton(color:Colors.red, number: 1),
                buildButton(color:Colors.orange, number: 2),
                buildButton(color:Colors.yellow, number: 3),
                buildButton(color:Colors.green, number: 4),
                buildButton(color:Colors.teal, number: 5),
                buildButton(color:Colors.blue, number: 6),
                buildButton(color:Colors.purple, number: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
