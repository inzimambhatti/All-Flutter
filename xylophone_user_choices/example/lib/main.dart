import 'package:audio_picker/audio_picker.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hsl_colorpicker/HSLColorPicker.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _absolutePathOfAudio;
  AudioPlayer audioPlayer;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
  }

  void showLoading() {
    showDialog(
      context: navigatorKey.currentState.overlay.context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          child: new Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              new CircularProgressIndicator(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Text("Loading"),
              ),
            ],
          ),
        );
      },
    );
  }

  void dismissLoading() {
    Navigator.pop(navigatorKey.currentState.overlay.context);
  }

  void openAudioPicker() async {
    showLoading();
    var path = await AudioPicker.pickAudio();
    dismissLoading();
    setState(() {
      _absolutePathOfAudio = path;
    });
  }

  void playMusic() async {
    await audioPlayer.play(_absolutePathOfAudio, isLocal: true);
  }

  void stopMusic() async {
    await audioPlayer.stop();
  }

  void resumeMusic() async {
    await audioPlayer.resume(); // quickly plays the sound, will not release
  }

  HSLColor hslColor = HSLColor.fromColor(Colors.blue);
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('Xylophone User based:Inzimam'),
        ),
        body: Center(
          child:Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
Text("Pick Sound and Color for every tile to play",style: TextStyle(
            color: Colors.purple,
            fontSize: 18,),),
             // Row 1
              Row(
                children: [

                  MaterialButton(

                    color: Colors.orange,
                    child:Icon(Icons.music_note_outlined),
                    onPressed: () {
                      openAudioPicker();
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _absolutePathOfAudio == null
                          ? Container()
                          : MaterialButton(
                        minWidth: 270,
                        color: Colors.green,

                        onPressed: playMusic,

                      ),
                    //  _absolutePathOfAudio == null
                      //    ? Container()

                    ],
                  ),
                ],
              ),
              //row2
              Row(
                children: [

                  MaterialButton(

                    color: Colors.orange,
                    child:Icon(Icons.music_note_outlined),
                    onPressed: () {
                      openAudioPicker();
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _absolutePathOfAudio == null
                          ? Container()
                          : MaterialButton(
                        minWidth: 270,
                        color: Colors.red
                        ,

                        onPressed: playMusic,
                      ),

                    ],
                  ),
                ],
              ),
              //Row3
              Row(
                children: [

                  MaterialButton(

                    color: Colors.orange,
                    child:Icon(Icons.music_note_outlined),
                    onPressed: () {
                      openAudioPicker();
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _absolutePathOfAudio == null
                          ? Container()
                          : MaterialButton(
                        minWidth: 270,
                        color: color,

                        onPressed: playMusic,
                      ),

                    ],
                  ),
                ],
              ),

              // Row 4
              Row(
                children: [

                  MaterialButton(

                    color: Colors.orange,
                    child:Icon(Icons.music_note_outlined),
                    onPressed: () {
                      openAudioPicker();
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _absolutePathOfAudio == null
                          ? Container()
                          : MaterialButton(
                        minWidth: 270,
                        color: Colors.pink,

                        onPressed: playMusic,

                      ),
                      //  _absolutePathOfAudio == null
                      //    ? Container()

                    ],
                  ),
                ],
              ),
              // Row 5
              Row(
                children: [

                  MaterialButton(

                    color: Colors.orange,
                    child:Icon(Icons.music_note_outlined),
                    onPressed: () {
                      openAudioPicker();
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _absolutePathOfAudio == null
                          ? Container()
                          : MaterialButton(
                        minWidth: 270,
                        color: Colors.teal,

                        onPressed: playMusic,

                      ),
                      //  _absolutePathOfAudio == null
                      //    ? Container()

                    ],
                  ),
                ],
              ),
              // Row 6
              Row(
                children: [

                  MaterialButton(

                    color: Colors.orange,
                    child:Icon(Icons.music_note_outlined),
                    onPressed: () {
                      openAudioPicker();
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _absolutePathOfAudio == null
                          ? Container()
                          : MaterialButton(
                        minWidth: 270,
                        color: Colors.blue,

                        onPressed: playMusic,

                      ),
                      //  _absolutePathOfAudio == null
                      //    ? Container()

                    ],
                  ),
                ],
              ),
////////////////
              HSLColorPicker(
                onChanged: (colorSelected) {
                  print(colorSelected);
                  setState(() {
                    hslColor = colorSelected;
                    color = colorSelected.toColor();
                  });
                },
                size: 200,
                strokeWidth: 5,
                thumbSize: 9,
                thumbStrokeSize: 3,
                showCenterColorIndicator: true,
                centerColorIndicatorSize: 80,
                initialColor: Colors.blueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
