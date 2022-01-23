// ignore_for_file: file_names

import 'dart:async';


import 'package:kid_alphabet/DrawerFile.dart';
import 'package:kid_alphabet/main.dart';
import 'package:flutter/material.dart';

class ps extends StatefulWidget {
  const ps({Key? key}) : super(key: key);

  @override
  _psState createState() => _psState();
}

List<String> capitalAlpha = [
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
  'G',
  'H',
  'I',
  'J', 'K',
  'L', 'M',
  'N', 'O', 'P',
  'Q',
  'R',
  'S',
  'T',
  'U',
  'V',
  'W',
  'X',
  'Y',
  'Z',
];
List<String> smallAlpha = [
  'a',
  'b',
  'c',
  'd',
  'e',
  'f',
  'g',
  'h',
  'i',
  'j',
  'k',
  'l',
  'm',
  'n',
  'o',
  'p',
  'q',
  'r',
  's',
  't',
  'u',
  'v',
  'w',
  'x',
  'y',
  'z',
];
int count = 0;
bool num = false;

int seconds = 5;
int minutes = 0;
Timer timer = Timer.periodic(const Duration(seconds: 1), (_) {});

class _psState extends State<ps> {
  void startTimer() {
    // ignore: unnecessary_null_comparison
    if (timer != null) {
      timer.cancel();
    }
    if (minutes > 0) {
      seconds = minutes * 60;
    }
    if (seconds > 0) {
      minutes = (seconds / 60).floor();
      seconds -= (minutes * 60);
    }
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          if (minutes > 0) {
            seconds = 59;
            minutes--;
          } else {
            timer.cancel();
            // ignore: avoid_print
            print('Timer is completed');
            setState(() {
              if (count < capitalAlpha.length - 1) {
                count++;
                seconds = 5;
                startTimer();
              }
            });
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
       drawer: MyDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Playing Screen'),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      ' $seconds',
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 50,
                          fontWeight: FontWeight.w100),
                    ),
                    const SizedBox(
                      height: 0,
                      child: Divider(
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              alphaCase == true
                  ? Text(
                '${capitalAlpha[count]}',
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 60,
                    fontWeight: FontWeight.w100),
              )
                  : Text(
                '${smallAlpha[count]}',
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 60,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FloatingActionButton(
                      elevation: 20,
                      backgroundColor: Colors.white70,
                      child: const Icon(
                        Icons.skip_previous_outlined,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        setState(() {
                          if (count < capitalAlpha.length - 1) {
                            count--;
                            seconds = 5;
                            startTimer();
                          }
                        });
                      }),
                  const SizedBox(
                    width: 60,
                  ),
                  FloatingActionButton(
                      elevation: 20,
                      backgroundColor: Colors.white70,
                      child: const Icon(
                        Icons.next_plan_outlined,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        setState(() {
                          if (count < capitalAlpha.length - 1) {
                            count++;
                            seconds = 5;
                            startTimer();
                          }
                        });
                      }),
                ],
              ),
              num == false
                  ? FloatingActionButton(
                  elevation: 20,
                  backgroundColor: Colors.green,
                  child: const Icon(Icons.play_arrow,
                      color: Colors.black),

                  onPressed: () {
                    setState(() {
                      count;

                      num = true;
                    });
                  })
                  : FloatingActionButton(
                  elevation: 20,
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.play_circle,
                      color: Colors.black),
                  onPressed: () {
                    setState(() {
                      count;
                     
                      num = false;
                    });
                  })
            ],
          ),
        ));
  }
}