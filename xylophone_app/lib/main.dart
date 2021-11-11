import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  late String _absolutePathOfAudio;

  void playSound(int num) {
    FilePicker.platform;
    final player = AudioCache();

    player.play('note$num.wav');
  }

  Expanded buildKey(int n, Color color) {

    return Expanded(
      child: MaterialButton(
        color: color,
        onPressed: () {
          playSound(n);
        },
        child: Text(''),
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
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
