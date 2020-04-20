import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNum){
    final player = AudioCache();
    player.play('note$noteNum.wav');
  }

  Expanded buildKey({Color color, int num}){
   return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(num);
        }, child: (Icon(Icons.music_note,
        color: Colors.white,)),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white10,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              buildKey(
              color: Colors.lightBlue.shade900, num: 1),
              buildKey( color:Colors.lightBlue.shade800, num: 2),
              buildKey( color:Colors.lightBlue.shade700,num:3),
              buildKey( color:Colors.lightBlue.shade600,num:4),
              buildKey( color: Colors.lightBlue.shade500,num: 5),
              buildKey(color: Colors.lightBlue.shade400,num:6),
              buildKey(color: Colors.lightBlue.shade300,num:7),

              ],

          ),
        ),
      ),
    );
  }
}

