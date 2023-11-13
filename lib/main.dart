import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(XylophoneApp());
void playsound(int soundNumber){
  final player = AudioPlayer();
  player.play(AssetSource('note$soundNumber.mp3'),);
}
Expanded Buildkey(Color color, int soundNumber){
  return Expanded(
    child: TextButton(onPressed: (){
      playsound(soundNumber);
    },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
      ),
      child: Text(''),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Buildkey(Colors.red, 1),
              Buildkey(Colors.orange, 2),
              Buildkey(Colors.yellow, 3),
              Buildkey(Colors.green, 4),
              Buildkey(Colors.blue, 5),
              Buildkey(Colors.indigo, 6),
              Buildkey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
